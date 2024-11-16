# 📊 Praktikum 2.1

Selamat datang di repositori **Database Praktikum**! 🎓  
Repositori ini berisi informasi dan script SQL Praktikum Basis Data.

---

## 📘 Tugas Pertemuan 2.1

1. **Membuat Database** 🗄️  
   - Membuat sebuah database bernama **OrderEntry** yang akan digunakan untuk menyimpan data transaksi penjualan dan manajemen produk.

2. **Membuat Tabel-Tabel dalam Database** 📝  
   - Anda diminta untuk membuat tabel-tabel utama berikut:  
     - `vendors` 🏭: Menyimpan data vendor atau pemasok.  
     - `customers` 🧑‍🤝‍🧑: Menyimpan informasi pelanggan.  
     - `products` 📦: Menyimpan daftar produk yang dijual.  
     - `orders` 🛒: Menyimpan data pesanan yang dilakukan pelanggan.  
     - `productnotes` 🗒️: Menyimpan catatan terkait produk.  
     - `orderitems` 📑: Menyimpan detail item dalam setiap pesanan.

3. **Menentukan Relasi Antar-Tabel** 🔗  
   - Menghubungkan tabel-tabel melalui **primary key** dan **foreign key** untuk menciptakan struktur database yang saling terintegrasi.  
     - Contoh relasi:  
       - `products` dan `productnotes` melalui kolom `prod_id`.  
       - `orders` dan `orderitems` melalui kolom `order_num`.

4. **Verifikasi Database** ✅  
   - Menggunakan perintah `SHOW TABLES;` untuk memastikan semua tabel berhasil dibuat dengan nama yang sesuai.

💡 **Melalui tugas ini, diharapkan Anda mampu:**   
- 🚀 Memahami konsep dasar pembuatan tabel yang kompleks.  
- 🔗 Membuat relasi antar-tabel menggunakan **foreign key** untuk memastikan integritas data.  
- 🛠️ Mengembangkan keterampilan dalam mendesain database untuk kebutuhan bisnis sederhana.

✨ **Selamat mengerjakan!** Semoga tugas ini membantu Anda memahami dasar pengelolaan database! ✨

---

## 📋 Tahapan Query SQL

Berikut adalah script SQL untuk membuat database dan tabelnya:

### 1. Pembuatan Database `orderentry`
```sql
CREATE DATABASE orderentry;

SHOW DATABASES;
```
Berikut adalah daftar database setelah pembuatan database `orderentry`:

| Database              |
|:----------------------|
| `information_schema`  |
| `mysql`               |
| `orderentry`          |
| `performance_schema`  |
| `phpmyadmin`          |
| `praktikum`           |

### 2. Pembuatan Table `vendors` `customers` `products` `orders` `productnotes` `orderitems`
```sql
USE orderentry

CREATE TABLE vendors (
    vend_id          CHAR(4) NOT NULL PRIMARY KEY,
    vend_nama        VARCHAR(25) NOT NULL,
    vend_address     VARCHAR(30),
    vend_city        VARCHAR(20),
    vend_state       VARCHAR(5),
    vend_zip         VARCHAR(7),
    vend_country     VARCHAR(15)
);

CREATE TABLE customers (
    cust_id          CHAR(4) NOT NULL PRIMARY KEY,
    cust_name        VARCHAR(25) NOT NULL,
    cust_address     VARCHAR(30) NULL,
    cust_city        VARCHAR(25) NULL,
    cust_state       VARCHAR(5) NULL,
    cust_zip         VARCHAR(5) NULL,
    cust_country     VARCHAR(20) NULL,
    cust_contact     VARCHAR(25) NULL,
    cust_email       VARCHAR(30) NULL
);

CREATE TABLE products (
    prod_id          VARCHAR(10) NOT NULL PRIMARY KEY,
    vend_id          CHAR(4) NOT NULL,
    prod_name        VARCHAR(25) NOT NULL,
    prod_price       INT NOT NULL,
    prod_desc        VARCHAR(255) NULL
);

CREATE TABLE orders (
    order_num        INT NOT NULL,
    order_date       DATE NOT NULL,
    cust_id          CHAR(5) NOT NULL,
    PRIMARY KEY(order_num)
);

CREATE TABLE productnotes (
    note_id          CHAR(3) NOT NULL,
    prod_id          VARCHAR(10) NOT NULL,
    note_date        DATE NOT NULL,
    note_text        VARCHAR(200) NULL,
    PRIMARY KEY (note_id),
    FOREIGN KEY (prod_id) REFERENCES products (prod_id)
);

CREATE TABLE orderitems (
    order_num        INT NOT NULL,
    order_item       INT NOT NULL,
    prod_id          VARCHAR(10) NOT NULL,
    quantity         INT NOT NULL,
    PRIMARY KEY (order_num, order_item)
);

SHOW tables;
```
Berikut adalah daftar table setelah pembuatan table `orderentry`:

| Tabel dalam OrderEntry |  
|-------------------------|  
| `customers`            |  
| `orderitems`           |  
| `orders`               |  
| `productnotes`         |  
| `products`             |  
| `vendors`              |


---
## 🗃 Struktur Tabel

### 1. Tabel `vendors`
Tabel ini menyimpan informasi tentang vendor atau pemasok.

| Kolom       | Tipe Data     | Keterangan                        |
|:-------------|:---------------|:------------------------------------|
| `vend_id`   | CHAR(4)       | ID unik untuk vendor (Primary Key)|
| `vend_nama` | VARCHAR(25)   | Nama vendor                       |
| `vend_address` | VARCHAR(30)| Alamat vendor                     |
| `vend_city` | VARCHAR(20)   | Kota vendor                       |
| `vend_state`| VARCHAR(5)    | Provinsi                          |
| `vend_zip`  | VARCHAR(7)    | Kode pos                          |
| `vend_country` | VARCHAR(15)| Negara                            |

### 2. Tabel `customers`
Tabel ini menyimpan informasi tentang pelanggan.

| Kolom       | Tipe Data     | Keterangan                        |
|:-------------|:---------------|:------------------------------------|
| `cust_id`   | CHAR(4)       | ID unik pelanggan (Primary Key)   |
| `cust_name` | VARCHAR(25)   | Nama pelanggan                    |
| `cust_address` | VARCHAR(30)| Alamat pelanggan                  |
| `cust_city` | VARCHAR(25)   | Kota                              |
| `cust_state`| VARCHAR(5)    | Provinsi                          |
| `cust_zip`  | VARCHAR(5)    | Kode pos                          |
| `cust_country` | VARCHAR(20)| Negara                            |
| `cust_contact` | VARCHAR(25)| Kontak                            |
| `cust_email` | VARCHAR(30)  | Email                             |

### 3. Tabel `products`
Tabel ini menyimpan informasi produk yang tersedia.

| Kolom       | Tipe Data     | Keterangan                        |
|:-------------|:---------------|:------------------------------------|
| `prod_id`   | VARCHAR(10)   | ID produk (Primary Key)           |
| `vend_id`   | CHAR(4)       | ID vendor yang menyuplai produk   |
| `prod_name` | VARCHAR(25)   | Nama produk                       |
| `prod_price`| INT           | Harga produk                      |
| `prod_desc` | VARCHAR(255)  | Deskripsi produk                  |

### 4. Tabel `orders`
Tabel ini menyimpan informasi pesanan yang dilakukan oleh pelanggan.

| Kolom       | Tipe Data     | Keterangan                        |
|:------------------------------------|
| `order_num` | INT           | Nomor pesanan (Primary Key)       |
| `order_date`| DATE          | Tanggal pesanan                   |
| `cust_id`   | CHAR(5)       | ID pelanggan                      |

### 5. Tabel `productnotes`
Tabel ini menyimpan catatan tambahan tentang produk.

| Kolom       | Tipe Data     | Keterangan                        |
|:-------------|:---------------|:------------------------------------|
| `note_id`   | CHAR(3)       | ID catatan (Primary Key)          |
| `prod_id`   | VARCHAR(10)   | ID produk yang terkait            |
| `note_date` | DATE          | Tanggal catatan dibuat            |
| `note_text` | VARCHAR(200)  | Isi catatan                       |

### 6. Tabel `orderitems`
Tabel ini menyimpan informasi item yang ada di dalam setiap pesanan.

| Kolom       | Tipe Data     | Keterangan                        |
|:-------------|:---------------|:------------------------------------|
| `order_num` | INT           | Nomor pesanan                     |
| `order_item`| INT           | Urutan item dalam pesanan (Primary Key)|
| `prod_id`   | VARCHAR(10)   | ID produk yang dipesan            |
| `quantity`  | INT           | Jumlah produk dalam pesanan       |

---

## 📌 Kesimpulan  

Pada **Praktikum 2.1**, kita telah mempelajari dan mempraktikkan langkah-langkah untuk membuat database yang terstruktur dengan baik. Berikut adalah beberapa poin kesimpulan dari tugas ini:

1. **Pembuatan Database** 🗄️  
   - Database **OrderEntry** berhasil dibuat untuk menyimpan informasi terkait penjualan, pelanggan, produk, dan vendor.  

2. **Pembuatan Tabel-Tabel Utama** 📝  
   - Enam tabel utama telah dibuat, yaitu `vendors`, `customers`, `products`, `orders`, `productnotes`, dan `orderitems`, masing-masing dengan struktur kolom yang sesuai kebutuhan bisnis.  

3. **Relasi Antar-Tabel** 🔗  
   - Hubungan antar-tabel menggunakan **primary key** dan **foreign key** telah dirancang untuk menjaga integritas data dan mendukung kebutuhan analisis.  
   - Contoh relasi yang dibuat:  
     - `products` dengan `productnotes` melalui kolom `prod_id`.  
     - `orders` dengan `orderitems` melalui kolom `order_num`.  

4. **Validasi dan Verifikasi** ✅  
   - Semua tabel yang dibuat telah diverifikasi melalui perintah `SHOW TABLES;` dan hasilnya menunjukkan bahwa tabel-tabel telah dibuat dengan nama yang sesuai.  

💡 **Poin Penting yang Dipelajari:**  
- Pengelolaan struktur database yang efisien dengan memanfaatkan relasi antar-tabel.  
- Pentingnya menjaga integritas data melalui penerapan **primary key** dan **foreign key**.  
- Kemampuan untuk membuat tabel dengan berbagai jenis data untuk mendukung kebutuhan operasional dan analisis.

✨ **Semoga pembelajaran ini menjadi dasar yang kuat untuk membangun database yang lebih kompleks dan mendalam!** 🌟

## 🔗 Badge

![MySQL](https://img.shields.io/badge/Database-MySQL-blue)