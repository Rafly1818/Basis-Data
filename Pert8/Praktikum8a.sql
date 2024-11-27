Nama: Rafly Akbar Ravsanjani
NIM: 20230801401
Praktikum Basis Data Pertemuan 8
====================================

// 8.2 TES AWAL

Kerjakan pada satu lembar kertas dan kumpulkan sebelum memulai praktikum , Beri nim , nama dan
kelas.
1. Apa arti dari right join, Left join, inner join
2. Jelaskan pengertian trigger dan view

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| orderentry         |
| penjualan_barang   |
| performance_schema |
| phpmyadmin         |
| praktikum          |
| test               |
+--------------------+
8 rows in set (0.003 sec)

MariaDB [(none)]> use orderentry;
Database changed
MariaDB [orderentry]> show tables;
+----------------------+
| Tables_in_orderentry |
+----------------------+
| contact_customer     |
| customers            |
| orderitems           |
| orders               |
| productnotes         |
| products             |
| vendors              |
+----------------------+


// 8.3 Outer Join, 8.4 Left Join, 8.5 Right Join

MariaDB [orderentry]> select * from customers;
+---------+-----------+----------------+-----------+---------------------+--------------+----------+--------------+-------------------+
| cust_id | cust_name | cust_address   | cust_city | cust_state          | cust_country | kode_pos | cust_contact | cust_email        |
+---------+-----------+----------------+-----------+---------------------+--------------+----------+--------------+-------------------+
| 1855    | Paijo     | Graha Segovia  | Bandung   | Jalan Segovia No.10 | Indonesia    | 40123    | 081234567890 | paijo@example.com |
| 2198    | Galih     | Graha Lestari  | Aceh      | Jalan Lestari No.5  | Indonesia    | 23111    | 082345678901 | galih@example.com |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Jalan Raflesia No.3 | Indonesia    | 10110    | 083456789012 | budi@example.com  |
| 7634    | Lina      | Graha Pesona   | Makassar  | Jalan Pesona No.7   | Indonesia    | 90111    | 084567890123 | lina@example.com  |
| 9247    | Eri       | Graha Siena    | Medan     | Jalan Siena No.2    | Indonesia    | 20111    | 085678901234 | eri@example.com   |
+---------+-----------+----------------+-----------+---------------------+--------------+----------+--------------+-------------------+
5 rows in set (0.001 sec)

MariaDB [orderentry]> select * from orders;
+-----------+------------+---------+
| order_num | order_date | cust_id |
+-----------+------------+---------+
|      1001 | 2024-10-15 | 1855    |
|      1002 | 2024-10-20 | 2198    |
|      1003 | 2024-10-25 | 2428    |
|      1004 | 2024-11-01 | 7634    |
+-----------+------------+---------+
4 rows in set (0.001 sec)

MariaDB [orderentry]> select a.cust_name, b.order_date
    -> from customers a left join orders b on a.cust_id=b.cust_id;
+-----------+------------+
| cust_name | order_date |
+-----------+------------+
| Paijo     | 2024-10-15 |
| Galih     | 2024-10-20 |
| Budi      | 2024-10-25 |
| Lina      | 2024-11-01 |
| Eri       | NULL       |
+-----------+------------+
5 rows in set (0.001 sec)

MariaDB [orderentry]> select a.cust_name, b.order_date
    -> from customers a right join orders b on a.cust_id=b.cust_id;
+-----------+------------+
| cust_name | order_date |
+-----------+------------+
| Paijo     | 2024-10-15 |
| Galih     | 2024-10-20 |
| Budi      | 2024-10-25 |
| Lina      | 2024-11-01 |
+-----------+------------+
4 rows in set (0.001 sec)


// 8.6 Self Join

MariaDB [orderentry]> select * from vendors;
+---------+--------------------+--------------------------+-----------+-------------+----------+--------------+
| vend_id | vend_nama          | vend_address             | vend_city | vend_state  | vend_zip | vend_country |
+---------+--------------------+--------------------------+-----------+-------------+----------+--------------+
| V001    | PT Maju Bersama    | Jl. Raya Serpong No. 123 | Tangerang | Banten      | 15321    | Indonesia    |
| V002    | CV Sukses Mandiri  | Jl. Gatot Subroto 45     | Jakarta   | DKI Jakarta | 10230    | Indonesia    |
| V003    | UD Berkah Jaya     | Jl. Ahmad Yani 67        | Bandung   | Jawa Barat  | 40132    | Indonesia    |
| V004    | PT Global Solution | Jl. Sudirman 89          | Jakarta   | DKI Jakarta | 10210    | Indonesia    |
| V005    | CV Makmur Sejati   | Jl. Diponegoro 12        | Surabaya  | Jawa Timur  | 60241    | Indonesia    |
+---------+--------------------+--------------------------+-----------+-------------+----------+--------------+
5 rows in set (0.001 sec)

MariaDB [orderentry]> select a.vend_nama, b.vend_state, 'Negaranya', b.vend_country
    ->  from vendors a inner join vendors b on a.vend_id=b.vend_id;
+--------------------+-------------+-----------+--------------+
| vend_nama          | vend_state  | Negaranya | vend_country |
+--------------------+-------------+-----------+--------------+
| PT Maju Bersama    | Banten      | Negaranya | Indonesia    |
| CV Sukses Mandiri  | DKI Jakarta | Negaranya | Indonesia    |
| UD Berkah Jaya     | Jawa Barat  | Negaranya | Indonesia    |
| PT Global Solution | DKI Jakarta | Negaranya | Indonesia    |
| CV Makmur Sejati   | Jawa Timur  | Negaranya | Indonesia    |
+--------------------+-------------+-----------+--------------+
5 rows in set (0.001 sec)


// 8.7 Trigger

MariaDB [orderentry]> create table produk_hapus as select * from products where 1=2;
Query OK, 0 rows affected (0.034 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [orderentry]> desc produk_hapus;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| prod_id    | varchar(10)  | NO   |     | NULL    |       |
| vend_id    | char(4)      | NO   |     | NULL    |       |
| prod_name  | varchar(25)  | NO   |     | NULL    |       |
| prod_price | int(11)      | NO   |     | NULL    |       |
| prod_desc  | varchar(255) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+

 MariaDB [orderentry]> ALTER TABLE produk_hapus
    -> ADD tgl_hapus DATE,
    -> ADD user VARCHAR(30);
Query OK, 0 rows affected (0.016 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [orderentry]> desc produk_hapus;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| prod_id    | varchar(10)  | NO   |     | NULL    |       |
| vend_id    | char(4)      | NO   |     | NULL    |       |
| prod_name  | varchar(25)  | NO   |     | NULL    |       |
| prod_price | int(11)      | NO   |     | NULL    |       |
| prod_desc  | varchar(255) | YES  |     | NULL    |       |
| tgl_hapus  | date         | YES  |     | NULL    |       |
| user       | varchar(30)  | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.046 sec)

 MariaDB [orderentry]> CREATE TRIGGER hapus_barang AFTER DELETE
    -> ON products FOR EACH ROW
    -> INSERT INTO produk_hapus (
    -> prod_id, vend_id, prod_name, prod_price, prod_desc, tgl_hapus, user
    -> ) VALUES (
    -> OLD.prod_id, OLD.vend_id, OLD.prod_name, OLD.prod_price, OLD.prod_desc, SYSDATE(), CURRENT_USER
    -> );
    -> end;
Query OK, 0 rows affected (0.019 sec)

**Setelah trigger kita buat , lakukan pengujian dengan cara**
1. Hapus salah satu row dari table products
2. Buka table produk_hapus , perhatikan tabel tersebut terisi data dari products yang dihapus

MariaDB [orderentry]> select * from products; **Hapus isi di productnotes dlu karena 'prod_id' foreign key**
+---------+---------+---------------------+------------+-----------------------------------------------+
| prod_id | vend_id | prod_name           | prod_price | prod_desc                                     |
+---------+---------+---------------------+------------+-----------------------------------------------+
| P1234   | V001    | Premium Chair       |     750000 | Produk premium kualitas terbaik - Tangerang   |
| P4321   | V005    | Business Software   |    2500000 | Solusi bisnis eksklusif - Tangerang           |
| P5678   | V002    | Office Desk         |    1200000 | Kualitas terbaik harga terjangkau - Tangerang |
| P6543   | V004    | Ergonomic Mouse     |     450000 | Inovasi desain ergonomis - Tangerang          |
| P9876   | V003    | Professional Laptop |   15000000 | Pilihan profesional bergaransi - Tangerang    |
+---------+---------+---------------------+------------+-----------------------------------------------+

MariaDB [orderentry]> select * from productnotes; **Hapus disini dlu**
+---------+---------+------------+-----------------------------------------------+
| note_id | prod_id | note_date  | note_text                                     |
+---------+---------+------------+-----------------------------------------------+
| 001     | P1234   | 2024-10-15 | Produk premium kualitas terbaik - Tangerang   |
| 002     | P4321   | 2024-10-20 | Solusi bisnis eksklusif - Tangerang           |
| 003     | P5678   | 2024-10-25 | Kualitas terbaik harga terjangkau - Tangerang |
| 004     | P6543   | 2024-11-01 | Inovasi desain ergonomis - Tangerang          |
| 005     | P9876   | 2024-11-05 | Pilihan profesional bergaransi - Tangerang    |
+---------+---------+------------+-----------------------------------------------+

MariaDB [orderentry]> DELETE FROM productnotes WHERE prod_id = 'P1234';
Query OK, 1 row affected (0.008 sec)

MariaDB [orderentry]> DELETE FROM products WHERE prod_id = 'P1234';
Query OK, 1 row affected (0.007 sec)

MariaDB [orderentry]> MariaDB [orderentry]> select * from products; // Table products setelah dihapus
+---------+---------+---------------------+------------+-----------------------------------------------+
| prod_id | vend_id | prod_name           | prod_price | prod_desc                                     |
+---------+---------+---------------------+------------+-----------------------------------------------+
| P4321   | V005    | Business Software   |    2500000 | Solusi bisnis eksklusif - Tangerang           |
| P5678   | V002    | Office Desk         |    1200000 | Kualitas terbaik harga terjangkau - Tangerang |
| P6543   | V004    | Ergonomic Mouse     |     450000 | Inovasi desain ergonomis - Tangerang          |
| P9876   | V003    | Professional Laptop |   15000000 | Pilihan profesional bergaransi - Tangerang    |
+---------+---------+---------------------+------------+-----------------------------------------------+
4 rows in set (0.001 sec)

MariaDB [orderentry]> select * from productnotes; // Table productnotes setelah dihapus
+---------+---------+------------+-----------------------------------------------+
| note_id | prod_id | note_date  | note_text                                     |
+---------+---------+------------+-----------------------------------------------+
| 002     | P4321   | 2024-10-20 | Solusi bisnis eksklusif - Tangerang           |
| 003     | P5678   | 2024-10-25 | Kualitas terbaik harga terjangkau - Tangerang |
| 004     | P6543   | 2024-11-01 | Inovasi desain ergonomis - Tangerang          |
| 005     | P9876   | 2024-11-05 | Pilihan profesional bergaransi - Tangerang    |
+---------+---------+------------+-----------------------------------------------+

MariaDB [orderentry]> select * from produk_hapus; **Hasil akhir muncul di table produk_hapus**
+---------+---------+---------------+------------+---------------------------------------------+------------+----------------+
| prod_id | vend_id | prod_name     | prod_price | prod_desc                                   | tgl_hapus  | user           |
+---------+---------+---------------+------------+---------------------------------------------+------------+----------------+
| P1234   | V001    | Premium Chair |     750000 | Produk premium kualitas terbaik - Tangerang | 2024-11-21 | root@localhost |
+---------+---------+---------------+------------+---------------------------------------------+------------+----------------+


// 8.8 View

MariaDB [orderentry]> create view view1 as
    -> select cust_name, cust_country from customers;
Query OK, 0 rows affected (0.007 sec)

MariaDB [orderentry]> select * from view1;
+-----------+--------------+
| cust_name | cust_country |
+-----------+--------------+
| Paijo     | Indonesia    |
| Galih     | Indonesia    |
| Budi      | Indonesia    |
| Lina      | Indonesia    |
| Eri       | Indonesia    |
+-----------+--------------+