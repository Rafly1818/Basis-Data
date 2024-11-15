# 📦 Dokumentasi Database `orderentry`

## 🗃️ Daftar Tabel
1. [Tabel `customers`](#tabel-customers)
2. [Tabel `contact_customer`](#tabel-contact_customer)

---

## Tabel `customers`

### 💾 Struktur Tabel
```sql
CREATE TABLE customers (
    cust_id CHAR(4) NOT NULL PRIMARY KEY,
    Nama_Customer VARCHAR(50) NOT NULL,
    cust_address VARCHAR(50),
    cust_city VARCHAR(25),
    cust_state VARCHAR(5),
    cust_zip VARCHAR(5),
    cust_country VARCHAR(20),
    cust_contact VARCHAR(25),
    cust_email VARCHAR(30),
    cust_planet VARCHAR(50)
);
📋 Deskripsi Kolom
Kolom	Tipe	Null	Kunci	Default	Keterangan
cust_id	CHAR(4)	NO	PRI	NULL	ID unik customer
Nama_Customer	VARCHAR(50)	NO		NULL	Nama customer
cust_address	VARCHAR(50)	YES		NULL	Alamat customer
cust_city	VARCHAR(25)	YES		NULL	Kota customer
cust_state	VARCHAR(5)	YES		NULL	Provinsi customer
cust_zip	VARCHAR(5)	YES		NULL	Kode pos
cust_country	VARCHAR(20)	YES		NULL	Negara customer
cust_contact	VARCHAR(25)	YES		NULL	Kontak customer
cust_email	VARCHAR(30)	YES		NULL	Email customer
cust_planet	VARCHAR(50)	YES		NULL	Planet customer
🔨 Perubahan Tabel
Mengganti nama kolom cust_name menjadi Nama_Customer:

sql
Copy code
ALTER TABLE customers CHANGE cust_name Nama_Customer VARCHAR(50);
Mengubah tipe data kolom cust_address:

sql
Copy code
ALTER TABLE customers MODIFY cust_address VARCHAR(50);
Menambahkan kolom baru cust_planet:

sql
Copy code
ALTER TABLE customers ADD cust_planet VARCHAR(50);
Tabel contact_customer
💾 Struktur Tabel
sql
Copy code
CREATE TABLE contact_customer (
    Nama_Cust VARCHAR(50) NOT NULL PRIMARY KEY,
    HP1 VARCHAR(50),
    HP2 VARCHAR(20) NOT NULL,
    HP3 VARCHAR(50)
);
📋 Deskripsi Kolom
Kolom	Tipe	Null	Kunci	Default	Keterangan
Nama_Cust	VARCHAR(50)	NO	PRI	NULL	Nama customer (referensi)
HP1	VARCHAR(50)	YES		NULL	Nomor HP utama
HP2	VARCHAR(20)	NO		NULL	Nomor HP kedua
HP3	VARCHAR(50)	YES		NULL	Nomor HP tambahan
🔨 Perubahan Tabel
Mengganti nama kolom Id_cust menjadi Nama_Cust:

sql
Copy code
ALTER TABLE contact_customer CHANGE Id_cust Nama_Cust VARCHAR(50);
Mengubah tipe data kolom HP1:

sql
Copy code
ALTER TABLE contact_customer MODIFY HP1 VARCHAR(50);
Menambahkan kolom baru HP3:

sql
Copy code
ALTER TABLE contact_customer ADD HP3 VARCHAR(50);