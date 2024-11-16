# 📊 Praktikum 4

Selamat datang di repositori **Database Praktikum**! 🎓  
Repositori ini berisi informasi dan script SQL Praktikum Basis Data.

---

## 📘 Tugas Pertemuan 4

📝 **Tugas 1: Modifikasi Tabel `customers`**
Pada tugas ini, fokusnya adalah memodifikasi tabel `customers` yang sudah ada dalam database `orderentry`. Berikut adalah langkah-langkah yang dilakukan:

1. **Mengubah Nama Kolom:**
   - Kolom `cust_name` diubah menjadi `Nama_Customer` dengan tipe data `VARCHAR(50)`.

2. **Mengubah Tipe Data Kolom:**
   - Kolom `cust_address` diubah dari `VARCHAR(30)` menjadi `VARCHAR(50)` untuk mendukung penyimpanan data yang lebih panjang.

3. **Menambahkan Kolom Baru:**
   - Kolom `cust_planet` ditambahkan dengan tipe data `VARCHAR(50)` untuk mencatat planet asal pelanggan (misalnya untuk aplikasi fiksi ilmiah).

📝 **Tugas 2: Membuat dan Memodifikasi Tabel `contact_customer`**
Tugas ini melibatkan pembuatan tabel baru bernama `contact_customer` dan melakukan beberapa modifikasi pada tabel tersebut. Berikut langkah-langkahnya:

1. **Membuat Tabel Baru:**
   - Tabel `contact_customer` dibuat dengan kolom berikut:
     - `Id_cust` sebagai **Primary Key** (tipe `VARCHAR(5)`).
     - `HP1` dan `HP2` untuk menyimpan nomor telepon pelanggan (tipe `VARCHAR(20)`).

2. **Mengubah Nama Kolom:**
   - Kolom `Id_cust` diubah menjadi `Nama_Cust` dengan tipe data `VARCHAR(50)`.

3. **Mengubah Tipe Data Kolom:**
   - Kolom `HP1` diubah dari `VARCHAR(20)` menjadi `VARCHAR(50)` untuk mendukung penyimpanan nomor yang lebih panjang.

4. **Menambahkan Kolom Baru:**
   - Kolom `HP3` ditambahkan dengan tipe data `VARCHAR(50)` untuk mencatat nomor telepon tambahan pelanggan.

**Hasil Akhir:**  
Tabel `contact_customer` dibuat dan dimodifikasi dengan nama kolom yang relevan, tipe data yang diperbarui, serta tambahan kolom bar(`HP3`).

✨ **Selamat mengerjakan!** Semoga tugas ini membantu Anda memahami dasar pengelolaan database! ✨

---

## 📋 Tahapan Query SQL

Berikut adalah script SQL untuk membuat database dan tabelnya:

### 1. Modifikasi Tabel `customers`
```sql
USE orderentry;

SHOW tables;

alter table customers change cust_name Nama_Customer varchar(50);
alter table customers modify cust_address varchar(50);
alter table customers add cust_planet varchar(50);

DESC customers;
```
| Tabel dalam OrderEntry |  
|-------------------------|  
| `customers`            |  
| `orderitems`           |  
| `orders`               |  
| `productnotes`         |  
| `products`             |  
| `vendors`              |


| Field         | Type        | Null | Key | Default | Extra |
|:---------------|:-------------|:------|:-----|:---------|:-------|
| cust_id       | char(4)     | NO   | PRI | NULL    |       |
| Nama_Customer | varchar(50) | YES  |     | NULL    |       |
| cust_address  | varchar(50) | YES  |     | NULL    |       |
| cust_city     | varchar(25) | YES  |     | NULL    |       |
| cust_state    | varchar(5)  | YES  |     | NULL    |       |
| cust_zip      | varchar(5)  | YES  |     | NULL    |       |
| cust_country  | varchar(20) | YES  |     | NULL    |       |
| cust_contact  | varchar(25) | YES  |     | NULL    |       |
| cust_email    | varchar(30) | YES  |     | NULL    |       |
| cust_planet   | varchar(50) | YES  |     | NULL    |       |

### 2. Membuat dan Memodifikasi Tabel `contact_customer`
```sql
CREATE TABLE contact_customer (
    Id_cust VARCHAR(5) NOT NULL PRIMARY KEY,
    HP1 VARCHAR(20) NOT NULL,
    HP2 VARCHAR(20) NOT NULL
);

SHOW Tables;
DESC contact_customer;

alter table contact_customer change Id_cust Nama_Cust varchar(50);
alter table contact_customer modify HP1 varchar(50);
alter table contact_customer add HP3 varchar(50);

DESC contact_customer;
```

| Tabel dalam OrderEntry |  
|-------------------------|  
| `customers`            |
| `contact_customers`    |
| `orderitems`           |  
| `orders`               |  
| `productnotes`         |  
| `products`             |  
| `vendors`              |

#### Sebelum Dimodifikasi
| Field   | Type        | Null | Key | Default | Extra |
|:---------|:-------------|:------|:-----|:---------|:-------|
| Id_cust | varchar(5)  | NO   | PRI | NULL    |       |
| HP1     | varchar(20) | NO   |     | NULL    |       |
| HP2     | varchar(20) | NO   |     | NULL    |       |

#### Setelah Dimodifikasi
| Field     | Type        | Null | Key | Default | Extra |
|:-----------|:-------------|:------|:-----|:---------|:-------|
| Nama_Cust | varchar(50) | NO   | PRI | NULL    |       |
| HP1       | varchar(50) | YES  |     | NULL    |       |
| HP2       | varchar(20) | NO   |     | NULL    |       |
| HP3       | varchar(50) | YES  |     | NULL    |       |

---

## 🗂 Struktur Tabel

### Tugas 1: Struktur Tabel `customers`

| Field         | Type        | Null | Key | Default | Extra |
|:---------------|:-------------|:------|:-----|:---------|:-------|
| cust_id       | char(4)     | NO   | PRI | NULL    |       |
| Nama_Customer | varchar(50) | YES  |     | NULL    |       |
| cust_address  | varchar(50) | YES  |     | NULL    |       |
| cust_city     | varchar(25) | YES  |     | NULL    |       |
| cust_state    | varchar(5)  | YES  |     | NULL    |       |
| cust_zip      | varchar(5)  | YES  |     | NULL    |       |
| cust_country  | varchar(20) | YES  |     | NULL    |       |
| cust_contact  | varchar(25) | YES  |     | NULL    |       |
| cust_email    | varchar(30) | YES  |     | NULL    |       |
| cust_planet   | varchar(50) | YES  |     | NULL    |       |

### Tugas 2: Struktur Tabel `contact_customer`

#### Sebelum Dimodifikasi
| Field   | Type        | Null | Key | Default | Extra |
|:---------|:------------|:------|:-----|:---------|:-------|
| Id_cust | varchar(5)  | NO   | PRI | NULL    |       |
| HP1     | varchar(20) | NO   |     | NULL    |       |
| HP2     | varchar(20) | NO   |     | NULL    |       |

#### Setelah Dimodifikasi
| Field     | Type        | Null | Key | Default | Extra |
|:-----------|:-------------|:------|:-----|:---------|:-------|
| Nama_Cust | varchar(50) | NO   | PRI | NULL    |       |
| HP1       | varchar(50) | YES  |     | NULL    |       |
| HP2       | varchar(20) | NO   |     | NULL    |       |
| HP3       | varchar(50) | YES  |     | NULL    |       |

---

## Kesimpulan

### 📝 **Tugas 1: Modifikasi Tabel `customers`**

Pada tugas ini, kita berhasil memodifikasi tabel `customers` dengan:
1. Mengganti nama kolom `cust_name` menjadi `Nama_Customer` untuk meningkatkan keterbacaan dan konsistensi nama kolom.
2. Mengubah tipe data kolom `cust_address` agar dapat menampung data alamat yang lebih panjang.
3. Menambahkan kolom baru `cust_planet` yang memberikan fleksibilitas tambahan untuk aplikasi kreatif seperti aplikasi bertema fiksi ilmiah.

**Hasil Akhir:**
Tabel `customers` kini lebih sesuai dengan kebutuhan aplikasi dan memiliki kemampuan untuk menyimpan data yang lebih kaya.

### 📝 **Tugas 2: Membuat dan Memodifikasi Tabel `contact_customer`**

Pada tugas ini, kita telah:
1. Membuat tabel baru bernama `contact_customer` untuk menyimpan informasi kontak pelanggan.
2. Melakukan modifikasi pada tabel dengan:
   - Mengganti nama kolom `Id_cust` menjadi `Nama_Cust` agar lebih jelas.
   - Mengubah tipe data `HP1` untuk mendukung penyimpanan nomor telepon yang lebih panjang.
   - Menambahkan kolom `HP3` untuk menyimpan nomor telepon tambahan pelanggan.

**Hasil Akhir:**
Tabel `contact_customer` kini lebih fleksibel dan mampu mencatat lebih banyak informasi kontak pelanggan, sesuai dengan kebutuhan bisnis yang terus berkembang.

✨ **Selamat! Anda telah menyelesaikan tugas ini dengan sukses dan siap melangkah ke tingkat yang lebih kompleks.** 🎉  

✨ **Semoga pembelajaran ini menjadi dasar yang kuat untuk membangun database yang lebih kompleks dan mendalam!** 🌟

## 🔗 Badge

![MySQL](https://img.shields.io/badge/Database-MySQL-blue)