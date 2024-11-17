# 📊 Praktikum 5

Selamat datang di repositori **Database Praktikum**! 🎓  
Repositori ini berisi informasi dan script SQL Praktikum Basis Data.

---

## 📘 Tugas Pertemuan 5

1. **Menambahkan Data Baru ke Tabel (`INSERT INTO`)**  
   - Tambahkan beberapa data pelanggan baru ke tabel `customers` yang terdiri dari kolom:  
     - `cust_id`  
     - `cust_name`  
     - `cust_address`  
     - `cust_city`  
     - `cust_country`  

2. **Memperbarui dan Menghapus Data (`UPDATE` dan `DELETE`)**  
   - Perbarui data pelanggan tertentu berdasarkan kolom `cust_name`.  
   - Hapus salah satu data pelanggan dari tabel menggunakan kriteria tertentu.

3. **Menampilkan Data dengan Kriteria Spesifik**  
   - Tampilkan hanya dua kolom: `cust_name` dan `cust_address`.  
   - Lakukan pencarian pelanggan berdasarkan nilai tertentu di kolom `cust_id`.

💡 **Output yang Diharapkan:**  
- Data pelanggan baru berhasil ditambahkan ke tabel.  
- Data pelanggan tertentu berhasil diperbarui atau dihapus.  
- Hasil query menampilkan data dengan format dan kriteria yang benar.

✨ **Selamat mengerjakan! Jadilah ahli dalam manipulasi data dengan SQL!** ✨

---

## 📋 Tahapan Query SQL

Berikut adalah script SQL untuk membuat database dan tabelnya:

### 1. Menambahkan Data Baru ke Tabel (`INSERT INTO`)
```sql
USE orderentry:

SHOW tables;
DESC customers;
SELECT * FROM customers;

INSERT INTO customers(cust_id, cust_name, cust_address, cust_city, cust_country) values('1975', 'Doni', 'Graha Pesona', 'Medan', 'Indonesia');
INSERT INTO customers(cust_id, cust_name, cust_address, cust_city, cust_country) values('2198', 'Galih', 'Graha Lestari', 'Aceh', 'Indonesia');
INSERT INTO customers(cust_id, cust_name, cust_address, cust_city, cust_country) values('9247', 'Eri', 'Graha Siena', 'Medan', 'Indonesia');

SELECT * FROM customers;
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


#### Sebelum Ditambahkan
| cust_id | cust_name | cust_address   | cust_city | cust_country |
|:---------|:-----------|:----------------|:-----------|:--------------|
| 0998    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |

#### Setelah Ditambahkan
| cust_id | cust_name | cust_address   | cust_city | cust_country |
|:---------|:-----------|:----------------|:-----------|:--------------|
| 0998    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
| 1975    | Doni      | Graha Pesona   | Medan     | Indonesia    |
| 2198    | Galih     | Graha Lestari  | Aceh      | Indonesia    |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |
| 9247    | Eri       | Graha Siena    | Medan     | Indonesia    |

### 2. Memperbarui dan Menghapus Data (`UPDATE` dan `DELETE`)
```sql
USE orderentry:

SHOW tables;
DESC customers;
SELECT * FROM customers;

UPDATE customers
SET cust_id = '1855'
WHERE cust_name = 'Paijo';

DELETE FROM customers
WHERE cust_name = 'Doni';

SELECT * FROM customers;
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

#### Sebelum di `UPDATE` dan `DELETE`
| cust_id | cust_name | cust_address   | cust_city | cust_country |
|:---------|:-----------|:----------------|:-----------|:--------------|
| 0998    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
| 1975    | Doni      | Graha Pesona   | Medan     | Indonesia    |
| 2198    | Galih     | Graha Lestari  | Aceh      | Indonesia    |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |
| 9247    | Eri       | Graha Siena    | Medan     | Indonesia    |

#### Setelah di `UPDATE` dan `DELETE`
| cust_id | cust_name | cust_address   | cust_city | cust_country |
|:---------|:-----------|:----------------|:-----------|:--------------|
| 1855    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
| 2198    | Galih     | Graha Lestari  | Aceh      | Indonesia    |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |
| 9247    | Eri       | Graha Siena    | Medan     | Indonesia    |

### 3. Menampilkan Data dengan Kriteria Spesifik
```sql
USE orderentry:

SHOW tables;
DESC customers;
SELECT * FROM customers;

SELECT cust_name, cust_address FROM customers;
SELECT * FROM customers WHERE cust_id = '1855';
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

| cust_id | cust_name | cust_address   | cust_city | cust_country |
|:---------|:-----------|:----------------|:-----------|:--------------|
| 1855    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
| 2198    | Galih     | Graha Lestari  | Aceh      | Indonesia    |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |
| 9247    | Eri       | Graha Siena    | Medan     | Indonesia    |

| cust_name | cust_address   |
|-----------|----------------|
| Paijo     | Graha Segovia  |
| Galih     | Graha Lestari  |
| Budi      | Graha Raflesia |
| Eri       | Graha Siena    |

| cust_id | cust_name | cust_address  | cust_city | cust_country |
|---------|-----------|---------------|-----------|--------------|
| 1855    | Paijo     | Graha Segovia | Bandung   | Indonesia    |

---

## Kesimpulan

1. **Manipulasi Data Berhasil Dilakukan**  
   - Data pelanggan baru telah berhasil ditambahkan ke tabel menggunakan perintah `INSERT INTO`.  
   - Data pelanggan tertentu berhasil diperbarui dan dihapus menggunakan perintah `UPDATE` dan `DELETE`.

2. **Query Spesifik**  
   - Perintah `SELECT` berhasil menampilkan data dengan kriteria tertentu, seperti menampilkan kolom tertentu (`cust_name` dan `cust_address`) atau data spesifik berdasarkan nilai `cust_id`.

3. **Keberhasilan Pengelolaan Tabel**  
   - Dengan memahami penggunaan query dasar seperti `INSERT`, `UPDATE`, `DELETE`, dan `SELECT`, pengelolaan database menjadi lebih efisien.  
   - Struktur tabel yang dirancang dengan baik memungkinkan kemudahan dalam manipulasi dan analisis data.  

✨ Dengan penguasaan query SQL ini, Anda siap untuk mengelola data dalam skala yang lebih besar di aplikasi nyata! 🚀

## 🔗 Badge

![MySQL](https://img.shields.io/badge/Database-MySQL-blue)