# 🧾 Database Penjualan Barang

Database **Penjualan Barang** berisi tabel-tabel yang digunakan untuk menyimpan data penjualan, pelanggan, barang, dan transaksi penjualan secara detail. 

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

## 🔗 Badge

Tambahkan badge berikut untuk mempercantik tampilan repositori di GitHub:

![MySQL](https://img.shields.io/badge/Database-MySQL-blue)

