# 🛒 Database Order Entry

Ini adalah dokumentasi untuk struktur database **Order Entry** yang terdiri dari tabel-tabel terkait dengan informasi pelanggan, produk, vendor, dan pesanan. Database ini cocok untuk aplikasi manajemen pesanan sederhana.

---

## 🗃 Struktur Tabel

### 1. Tabel `vendors`
Tabel ini menyimpan informasi tentang vendor atau pemasok.

| Kolom       | Tipe Data     | Keterangan                        |
|-------------|---------------|------------------------------------|
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
|-------------|---------------|------------------------------------|
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
|-------------|---------------|------------------------------------|
| `prod_id`   | VARCHAR(10)   | ID produk (Primary Key)           |
| `vend_id`   | CHAR(4)       | ID vendor yang menyuplai produk   |
| `prod_name` | VARCHAR(25)   | Nama produk                       |
| `prod_price`| INT           | Harga produk                      |
| `prod_desc` | VARCHAR(255)  | Deskripsi produk                  |

### 4. Tabel `orders`
Tabel ini menyimpan informasi pesanan yang dilakukan oleh pelanggan.

| Kolom       | Tipe Data     | Keterangan                        |
|-------------|---------------|------------------------------------|
| `order_num` | INT           | Nomor pesanan (Primary Key)       |
| `order_date`| DATE          | Tanggal pesanan                   |
| `cust_id`   | CHAR(5)       | ID pelanggan                      |

### 5. Tabel `productnotes`
Tabel ini menyimpan catatan tambahan tentang produk.

| Kolom       | Tipe Data     | Keterangan                        |
|-------------|---------------|------------------------------------|
| `note_id`   | CHAR(3)       | ID catatan (Primary Key)          |
| `prod_id`   | VARCHAR(10)   | ID produk yang terkait            |
| `note_date` | DATE          | Tanggal catatan dibuat            |
| `note_text` | VARCHAR(200)  | Isi catatan                       |

### 6. Tabel `orderitems`
Tabel ini menyimpan informasi item yang ada di dalam setiap pesanan.

| Kolom       | Tipe Data     | Keterangan                        |
|-------------|---------------|------------------------------------|
| `order_num` | INT           | Nomor pesanan                     |
| `order_item`| INT           | Urutan item dalam pesanan (Primary Key)|
| `prod_id`   | VARCHAR(10)   | ID produk yang dipesan            |
| `quantity`  | INT           | Jumlah produk dalam pesanan       |

---

## 🔗 Badge

Tambahkan badge untuk memperindah tampilan repositori ini:

![MySQL](https://img.shields.io/badge/Database-MySQL-blue)
