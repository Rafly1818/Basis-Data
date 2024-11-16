# 📋 Struktur Database `orderentry`

Berikut adalah struktur lengkap dari database `orderentry` beserta dengan semua tabelnya.

---

## 📄 Tabel `customers`

| Field            | Type          | Null | Key | Default | Extra |
|------------------|---------------|------|-----|---------|-------|
| `cust_id`        | `char(4)`     | NO   | PRI | NULL    |       |
| `Nama_Customer`  | `varchar(50)` | YES  |     | NULL    |       |
| `cust_address`   | `varchar(50)` | YES  |     | NULL    |       |
| `cust_city`      | `varchar(25)` | YES  |     | NULL    |       |
| `cust_state`     | `varchar(5)`  | YES  |     | NULL    |       |
| `cust_zip`       | `varchar(5)`  | YES  |     | NULL    |       |
| `cust_country`   | `varchar(20)` | YES  |     | NULL    |       |
| `cust_contact`   | `varchar(25)` | YES  |     | NULL    |       |
| `cust_email`     | `varchar(30)` | YES  |     | NULL    |       |
| `cust_planet`    | `varchar(50)` | YES  |     | NULL    |       |

---

## 📄 Tabel `contact_customer`

| Field       | Type          | Null | Key | Default | Extra |
|-------------|---------------|------|-----|---------|-------|
| `Nama_Cust` | `varchar(50)` | NO   | PRI | NULL    |       |
| `HP1`       | `varchar(50)` | YES  |     | NULL    |       |
| `HP2`       | `varchar(20)` | NO   |     | NULL    |       |
| `HP3`       | `varchar(50)` | YES  |     | NULL    |       |

---

## 🧾 Tabel `orderitems`

| Field        | Type           | Null | Key | Default | Extra |
|--------------|----------------|------|-----|---------|-------|
| `order_num`  | `int(11)`      | NO   | PRI | NULL    |       |
| `prod_id`    | `char(10)`     | NO   | PRI | NULL    |       |
| `quantity`   | `int(11)`      | YES  |     | NULL    |       |
| `item_price` | `decimal(8,2)` | YES  |     | NULL    |       |

---

## 🧾 Tabel `orders`

| Field        | Type       | Null | Key | Default | Extra |
|--------------|------------|------|-----|---------|-------|
| `order_num`  | `int(11)`  | NO   | PRI | NULL    |       |
| `order_date` | `date`     | YES  |     | NULL    |       |
| `cust_id`    | `char(4)`  | YES  | MUL | NULL    |       |

---

## 📜 Tabel `productnotes`

| Field        | Type       | Null | Key | Default | Extra |
|--------------|------------|------|-----|---------|-------|
| `note_id`    | `int(11)`  | NO   | PRI | NULL    |       |
| `prod_id`    | `char(10)` | YES  | MUL | NULL    |       |
| `note_date`  | `date`     | YES  |     | NULL    |       |
| `note_text`  | `text`     | YES  |     | NULL    |       |

---

## 📦 Tabel `products`

| Field        | Type           | Null | Key | Default | Extra |
|--------------|----------------|------|-----|---------|-------|
| `prod_id`    | `char(10)`     | NO   | PRI | NULL    |       |
| `vend_id`    | `char(10)`     | YES  | MUL | NULL    |       |
| `prod_name`  | `varchar(255)` | YES  |     | NULL    |       |
| `prod_price` | `decimal(8,2)` | YES  |     | NULL    |       |
| `prod_desc`  | `text`         | YES  |     | NULL    |       |

---

## 📦 Tabel `vendors`

| Field          | Type           | Null | Key | Default | Extra |
|----------------|----------------|------|-----|---------|-------|
| `vend_id`      | `char(10)`     | NO   | PRI | NULL    |       |
| `vend_name`    | `varchar(50)`  | YES  |     | NULL    |       |
| `vend_address` | `varchar(50)`  | YES  |     | NULL    |       |
| `vend_city`    | `varchar(50)`  | YES  |     | NULL    |       |
| `vend_state`   | `varchar(5)`   | YES  |     | NULL    |       |
| `vend_zip`     | `varchar(10)`  | YES  |     | NULL    |       |
| `vend_country` | `varchar(50)`  | YES  |     | NULL    |       |

---

### 🔑 Legend:
- **PK**: Primary Key
- **MUL**: Foreign Key (Multiple)
  
---

Markdown ini memberikan struktur yang lebih jelas, terstruktur, dan menarik untuk dokumentasi database Anda. Dapat langsung digunakan di GitHub atau dokumen lainnya!


## 🔗 Badge

![MySQL](https://img.shields.io/badge/Database-MySQL-blue)