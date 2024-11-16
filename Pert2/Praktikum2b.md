# 📊 Praktikum 2.2

Selamat datang di repositori **Database Praktikum**! 🎓  
Repositori ini berisi informasi dan script SQL Praktikum Basis Data.

---

## 📘 Tugas Pertemuan 2.2

Pada pertemuan praktikum kali ini, Anda akan diajak untuk memperdalam pemahaman mengenai perancangan database relasional dengan fokus pada integrasi antar-tabel menggunakan konsep **Primary Key** dan **Foreign Key**.  

Tugas ini akan mengimplementasikan studi kasus sederhana berupa sistem manajemen penjualan barang. Database yang dirancang harus mampu menyimpan data pelanggan, barang, transaksi penjualan, dan detail barang yang dijual dalam satu nota. Tujuan utamanya adalah memastikan data tersimpan secara terstruktur, konsisten, dan mudah diakses.  

1️⃣ **Membuat Database:**  
   - Buat sebuah database bernama **Penjualan_Barang** yang akan menjadi pusat pengelolaan informasi transaksi penjualan.  

2️⃣ **Membuat Tabel Utama:**  
   - Rancang tabel utama seperti berikut:  
     - **Pelanggan:** Menyimpan data pelanggan seperti nama, alamat, pekerjaan, nomor KTP, dan nomor telepon.  
     - **Barang:** Menyimpan informasi barang seperti nama barang, harga, dan stok.  
     - **Nota Penjualan:** Menyimpan data transaksi yang mencakup nomor nota, tanggal transaksi, total harga, dan referensi ke pelanggan.  
     - **Detail Penjualan:** Menyimpan rincian barang yang terdapat dalam setiap transaksi, termasuk jumlah dan harga.  

3️⃣ **Menentukan Relasi Antar-Tabel:**  
   - Hubungkan tabel-tabel tersebut menggunakan **Primary Key** dan **Foreign Key** agar data dapat saling terkait secara logis. Misalnya:  
     - **Pelanggan** dengan **Nota Penjualan** melalui kolom `Id_Pelanggan`.  
     - **Barang** dengan **Detail Penjualan** melalui kolom `Id_Barang`.  

4️⃣ **Menguji Database:**  
   - Pastikan semua tabel berhasil dibuat dengan menggunakan perintah `SHOW TABLES`.  
   - Periksa struktur tabel menggunakan perintah `DESCRIBE` untuk memastikan semua kolom dan relasi sudah sesuai.

   💡 **Tujuan Tugas:**  
- 🚀 Mengembangkan pemahaman tentang struktur database relasional.  
- 🔗 Mempelajari cara mendesain tabel dengan relasi yang kuat antar-entitas.  
- 🛠️ Menggunakan SQL untuk menciptakan database yang mendukung operasional bisnis sederhana.  

✨ **Selamat mengerjakan!** Semoga tugas ini membantu Anda memahami dasar pengelolaan database! ✨

---

## 📋 Tahapan Query SQL

Berikut adalah script SQL untuk membuat database dan tabelnya:

### 1. Pembuatan Database `penjualan_barang`
```sql
CREATE DATABASE penjualan_barang;

SHOW DATABASES;
```
Berikut adalah daftar database setelah pembuatan database `penjualan_barang`:

| Database              |
|:----------------------|
| `information_schema`  |
| `mysql`               |
| `orderentry`          |
| `penjualan_barang`    |
| `performance_schema`  |
| `phpmyadmin`          |
| `praktikum`           |

### 2. Pembuatan Table `pelanggan` `barang` `nota_penjualan` `detail_jual`
```sql
USE penjualan_barang

CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY,
    nama VARCHAR(100),
    alamat VARCHAR(255),
    pekerjaan VARCHAR(100),
    no_ktp VARCHAR(50),
    no_telp VARCHAR(20)
);

CREATE TABLE barang (
    id_barang INT PRIMARY KEY,
    nama_barang VARCHAR(100),
    harga DECIMAL(10, 2),
    stok INT
);

CREATE TABLE nota_penjualan (
    id_nota INT PRIMARY KEY,
    tgl_nota DATE,
    total DECIMAL(10, 2),
    id_pelanggan INT,
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)
);

CREATE TABLE detail_jual (
    id_nota INT,
    id_barang INT,
    jumlah INT,
    harga DECIMAL(10, 2),
    PRIMARY KEY (id_nota, id_barang),
    FOREIGN KEY (id_nota) REFERENCES nota_penjualan(id_nota),
    FOREIGN KEY (id_barang) REFERENCES barang(id_barang)
);

SHOW tables;
```

Berikut adalah daftar table setelah pembuatan table `penjualan_barang`:

| Tabel dalam penjualan_barang |  
|------------------------------|  
| `pelanggan`                  |  
| `barang`                     |  
| `nota_penjualan`             |  
| `detail_jual`                |

---

## 🗂 Struktur Tabel

### 1. Tabel `Pelanggan`
Tabel ini menyimpan informasi tentang pelanggan yang melakukan pembelian.

| Kolom         | Tipe Data     | Keterangan                   |
|---------------|---------------|------------------------------|
| `Id_Pelanggan`| INT           | ID unik pelanggan (Primary Key) |
| `Nama`        | VARCHAR(100)  | Nama lengkap pelanggan       |
| `Alamat`      | VARCHAR(255)  | Alamat pelanggan             |
| `Pekerjaan`   | VARCHAR(100)  | Pekerjaan pelanggan          |
| `No_Ktp`      | VARCHAR(50)   | Nomor KTP pelanggan          |
| `No_Telp`     | VARCHAR(20)   | Nomor telepon pelanggan      |

### 2. Tabel `Barang`
Tabel ini menyimpan informasi tentang barang yang tersedia.

| Kolom         | Tipe Data     | Keterangan                   |
|---------------|---------------|------------------------------|
| `Id_Barang`   | INT           | ID unik barang (Primary Key) |
| `Nama_Barang` | VARCHAR(100)  | Nama barang                  |
| `Harga`       | DECIMAL(10,2) | Harga barang                 |
| `Stok`        | INT           | Jumlah stok barang yang tersedia |

### 3. Tabel `Nota_Penjualan`
Tabel ini menyimpan informasi tentang transaksi penjualan yang dilakukan.

| Kolom         | Tipe Data     | Keterangan                   |
|---------------|---------------|------------------------------|
| `Id_Nota`     | INT           | ID unik nota penjualan (Primary Key) |
| `Tgl_Nota`    | DATE          | Tanggal transaksi penjualan  |
| `Total`       | DECIMAL(10,2) | Total nilai transaksi        |
| `Id_Pelanggan`| INT           | ID pelanggan terkait (Foreign Key ke tabel `Pelanggan`) |

### 4. Tabel `Detail_Jual`
Tabel ini menyimpan detail setiap item barang yang dijual dalam setiap transaksi.

| Kolom         | Tipe Data     | Keterangan                   |
|---------------|---------------|------------------------------|
| `Id_Nota`     | INT           | ID nota penjualan (Foreign Key ke tabel `Nota_Penjualan`) |
| `Id_Barang`   | INT           | ID barang (Foreign Key ke tabel `Barang`) |
| `Jumlah`      | INT           | Jumlah barang yang dijual    |
| `Harga`       | DECIMAL(10,2) | Harga per unit barang        |

> Catatan: Primary Key pada tabel `Detail_Jual` terdiri dari kombinasi `Id_Nota` dan `Id_Barang`.

---

## 📌 Kesimpulan

Melalui tugas ini, Anda telah mempelajari dasar-dasar perancangan database relasional yang melibatkan beberapa entitas utama, seperti pelanggan, barang, nota penjualan, dan detail penjualan. Berikut poin-poin utama yang dapat disimpulkan:  

1. **Pembuatan Database:**  
   - Anda berhasil membuat sebuah database bernama `penjualan_barang` untuk mengelola data penjualan barang secara terstruktur.

2. **Perancangan Tabel:**  
   - Tabel `pelanggan`, `barang`, `nota_penjualan`, dan `detail_jual` dirancang dengan menggunakan **Primary Key** untuk memastikan setiap data bersifat unik.  
   - Hubungan antar-tabel dikelola dengan **Foreign Key**, yang memastikan integritas referensial antar-data.  

3. **Relasi yang Terstruktur:**  
   - Sistem relasi antar-tabel memungkinkan integrasi data yang konsisten dan mendukung berbagai skenario pengolahan data transaksi.  
   - Contohnya, tabel `detail_jual` mampu mencatat barang yang dijual dalam satu transaksi dengan menghubungkan data ke tabel `nota_penjualan` dan `barang`.

4. **Implementasi SQL:**  
   - Anda menguasai perintah SQL untuk membuat tabel, menghubungkan tabel dengan relasi, dan memastikan struktur data sesuai dengan kebutuhan studi kasus.

💡 **Kesimpulan Utama:**  
Dengan memahami dan mengimplementasikan konsep-konsep ini, Anda kini memiliki kemampuan untuk membangun sistem database relasional yang tidak hanya efisien tetapi juga scalable untuk mendukung berbagai kebutuhan aplikasi bisnis.  

✨ **Selamat! Anda telah menyelesaikan tugas ini dengan sukses dan siap melangkah ke tingkat yang lebih kompleks.** 🎉  

✨ **Semoga pembelajaran ini menjadi dasar yang kuat untuk membangun database yang lebih kompleks dan mendalam!** 🌟

## 🔗 Badge

![MySQL](https://img.shields.io/badge/Database-MySQL-blue)