Nama: Rafly Akbar Ravsanjani
NIM: 20230801401
Praktikum Basis Data Pertemuan 8
====================================

// 8.9 TES AKHIR

1. Masih menggunakan order entry buatlah sebuah query untuk masing masing:
	a. join 2 table clause where
	b. Query dengan join on dari 3 table
	c. Right join
	d. Left join
	e. Self join
	f. view

2. Buatlah triger after delete untuk salah satu table di order entry. Serta tunjukan hasil akibat penerapan trigger.


// Jawaban Nomor 1 (a) 

MariaDB [orderentry]> select * from products;
+---------+---------+---------------------+------------+-----------------------------------------------+
| prod_id | vend_id | prod_name           | prod_price | prod_desc                                     |
+---------+---------+---------------------+------------+-----------------------------------------------+
| P4321   | V005    | Business Software   |    2500000 | Solusi bisnis eksklusif - Tangerang           |
| P5678   | V002    | Office Desk         |    1200000 | Kualitas terbaik harga terjangkau - Tangerang |
| P6543   | V004    | Ergonomic Mouse     |     450000 | Inovasi desain ergonomis - Tangerang          |
| P9876   | V003    | Professional Laptop |   15000000 | Pilihan profesional bergaransi - Tangerang    |
+---------+---------+---------------------+------------+-----------------------------------------------+
4 rows in set (0.001 sec)

MariaDB [orderentry]> select * from productnotes;
+---------+---------+------------+-----------------------------------------------+
| note_id | prod_id | note_date  | note_text                                     |
+---------+---------+------------+-----------------------------------------------+
| 002     | P4321   | 2024-10-20 | Solusi bisnis eksklusif - Tangerang           |
| 003     | P5678   | 2024-10-25 | Kualitas terbaik harga terjangkau - Tangerang |
| 004     | P6543   | 2024-11-01 | Inovasi desain ergonomis - Tangerang          |
| 005     | P9876   | 2024-11-05 | Pilihan profesional bergaransi - Tangerang    |
+---------+---------+------------+-----------------------------------------------+
4 rows in set (0.000 sec)

MariaDB [orderentry]> SELECT products.prod_name, productnotes.note_date
    -> FROM products, productnotes
    -> WHERE products.prod_id = productnotes.prod_id;
+---------------------+------------+
| prod_name           | note_date  |
+---------------------+------------+
| Business Software   | 2024-10-20 |
| Office Desk         | 2024-10-25 |
| Ergonomic Mouse     | 2024-11-01 |
| Professional Laptop | 2024-11-05 |
+---------------------+------------+
4 rows in set (0.001 sec)


// Jawaban nomor 1 (b)

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

MariaDB [orderentry]> SELECT
    -> 	vendors.vend_nama,
    -> 	products.prod_name,
    -> 	productnotes.note_date
    -> FROM
    ->     vendors
    -> JOIN
    ->     products ON vendors.vend_id = products.vend_id
    -> JOIN
    ->     productnotes ON products.prod_id = productnotes.prod_id;
+--------------------+---------------------+------------+
| vend_nama          | prod_name           | note_date  |
+--------------------+---------------------+------------+
| CV Makmur Sejati   | Business Software   | 2024-10-20 |
| CV Sukses Mandiri  | Office Desk         | 2024-10-25 |
| PT Global Solution | Ergonomic Mouse     | 2024-11-01 |
| UD Berkah Jaya     | Professional Laptop | 2024-11-05 |
+--------------------+---------------------+------------+
4 rows in set (0.000 sec)


// Jawaban nomor 1 (c)

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

MariaDB [orderentry]> SELECT
    ->  customers.cust_id,
    ->	customers.cust_name,
    ->  customers.cust_city,
    ->  orders.order_num,
    ->  orders.order_date
    -> FROM
    ->     customers
    -> RIGHT JOIN
    ->     orders ON customers.cust_id = orders.cust_id;
+---------+-----------+-----------+-----------+------------+
| cust_id | cust_name | cust_city | order_num | order_date |
+---------+-----------+-----------+-----------+------------+
| 1855    | Paijo     | Bandung   |      1001 | 2024-10-15 |
| 2198    | Galih     | Aceh      |      1002 | 2024-10-20 |
| 2428    | Budi      | Jakarta   |      1003 | 2024-10-25 |
| 7634    | Lina      | Makassar  |      1004 | 2024-11-01 |
+---------+-----------+-----------+-----------+------------+
4 rows in set (0.000 sec)


// Jawaban nomor 1 (d)

MariaDB [orderentry]> SELECT
    ->  customers.cust_id,
    ->  customers.cust_name,
    ->  customers.cust_city,
    ->  orders.order_num,
    ->  orders.order_date
    -> FROM
    ->     customers
    -> LEFT JOIN
    ->     orders ON customers.cust_id = orders.cust_id;
+---------+-----------+-----------+-----------+------------+
| cust_id | cust_name | cust_city | order_num | order_date |
+---------+-----------+-----------+-----------+------------+
| 1855    | Paijo     | Bandung   |      1001 | 2024-10-15 |
| 2198    | Galih     | Aceh      |      1002 | 2024-10-20 |
| 2428    | Budi      | Jakarta   |      1003 | 2024-10-25 |
| 7634    | Lina      | Makassar  |      1004 | 2024-11-01 |
| 9247    | Eri       | Medan     |      NULL | NULL       |
+---------+-----------+-----------+-----------+------------+


// Jawaban nomor 1 (e)

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

MariaDB [orderentry]> select a.cust_name, b.cust_city, 'Rumahnya', b.cust_country
    -> from customers a inner join customers b on a.cust_id=b.cust_id;
+-----------+-----------+----------+--------------+
| cust_name | cust_city | Rumahnya | cust_country |
+-----------+-----------+----------+--------------+
| Paijo     | Bandung   | Rumahnya | Indonesia    |
| Galih     | Aceh      | Rumahnya | Indonesia    |
| Budi      | Jakarta   | Rumahnya | Indonesia    |
| Lina      | Makassar  | Rumahnya | Indonesia    |
| Eri       | Medan     | Rumahnya | Indonesia    |
+-----------+-----------+----------+--------------+
5 rows in set (0.004 sec)


// Jawaban nomor 1 (f)

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


// Jawaban nomor 2

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

// Langkah-Langkah hapus row table

**Buka table products**

MariaDB [orderentry]> select * from products; **Disini kita ingin menghapus row pertama yaitu 'P4321'**
+---------+---------+---------------------+------------+-----------------------------------------------+
| prod_id | vend_id | prod_name           | prod_price | prod_desc                                     |
+---------+---------+---------------------+------------+-----------------------------------------------+
| P4321   | V005    | Business Software   |    2500000 | Solusi bisnis eksklusif - Tangerang           |
| P5678   | V002    | Office Desk         |    1200000 | Kualitas terbaik harga terjangkau - Tangerang |
| P6543   | V004    | Ergonomic Mouse     |     450000 | Inovasi desain ergonomis - Tangerang          |
| P9876   | V003    | Professional Laptop |   15000000 | Pilihan profesional bergaransi - Tangerang    |
+---------+---------+---------------------+------------+-----------------------------------------------+
4 rows in set (0.001 sec)

MariaDB [orderentry]> select * from productnotes; **Langkah awal hapus data di table 'productnotes'
+---------+---------+------------+-----------------------------------------------+
| note_id | prod_id | note_date  | note_text                                     |
+---------+---------+------------+-----------------------------------------------+
| 002     | P4321   | 2024-10-20 | Solusi bisnis eksklusif - Tangerang           |
| 003     | P5678   | 2024-10-25 | Kualitas terbaik harga terjangkau - Tangerang |
| 004     | P6543   | 2024-11-01 | Inovasi desain ergonomis - Tangerang          |
| 005     | P9876   | 2024-11-05 | Pilihan profesional bergaransi - Tangerang    |
+---------+---------+------------+-----------------------------------------------+
4 rows in set (0.003 sec)

MariaDB [orderentry]> select * from products; **Langkah kedua hapus data yang sama di table 'products'
+---------+---------+---------------------+------------+-----------------------------------------------+
| prod_id | vend_id | prod_name           | prod_price | prod_desc                                     |
+---------+---------+---------------------+------------+-----------------------------------------------+
| P4321   | V005    | Business Software   |    2500000 | Solusi bisnis eksklusif - Tangerang           |
| P5678   | V002    | Office Desk         |    1200000 | Kualitas terbaik harga terjangkau - Tangerang |
| P6543   | V004    | Ergonomic Mouse     |     450000 | Inovasi desain ergonomis - Tangerang          |
| P9876   | V003    | Professional Laptop |   15000000 | Pilihan profesional bergaransi - Tangerang    |
+---------+---------+---------------------+------------+-----------------------------------------------+
4 rows in set (0.001 sec)

MariaDB [orderentry]> DELETE FROM productnotes WHERE prod_id = 'P4321';
Query OK, 1 row affected (0.010 sec)

MariaDB [orderentry]> DELETE FROM products WHERE prod_id = 'P4321';
Query OK, 1 row affected (0.007 sec)

MariaDB [orderentry]> select * from productnotes; **Setelah dihapus**
+---------+---------+------------+-----------------------------------------------+
| note_id | prod_id | note_date  | note_text                                     |
+---------+---------+------------+-----------------------------------------------+
| 003     | P5678   | 2024-10-25 | Kualitas terbaik harga terjangkau - Tangerang |
| 004     | P6543   | 2024-11-01 | Inovasi desain ergonomis - Tangerang          |
| 005     | P9876   | 2024-11-05 | Pilihan profesional bergaransi - Tangerang    |
+---------+---------+------------+-----------------------------------------------+
3 rows in set (0.001 sec)

MariaDB [orderentry]> select * from products; **Setelah dihapus**
+---------+---------+---------------------+------------+-----------------------------------------------+
| prod_id | vend_id | prod_name           | prod_price | prod_desc                                     |
+---------+---------+---------------------+------------+-----------------------------------------------+
| P5678   | V002    | Office Desk         |    1200000 | Kualitas terbaik harga terjangkau - Tangerang |
| P6543   | V004    | Ergonomic Mouse     |     450000 | Inovasi desain ergonomis - Tangerang          |
| P9876   | V003    | Professional Laptop |   15000000 | Pilihan profesional bergaransi - Tangerang    |
+---------+---------+---------------------+------------+-----------------------------------------------+
3 rows in set (0.001 sec)

MariaDB [orderentry]> select * from produk_hapus; **Hasil akhir muncul di table produk_hapus**
+---------+---------+-------------------+------------+---------------------------------------------+------------+----------------+
| prod_id | vend_id | prod_name         | prod_price | prod_desc                                   | tgl_hapus  | user           |
+---------+---------+-------------------+------------+---------------------------------------------+------------+----------------+
| P1234   | V001    | Premium Chair     |     750000 | Produk premium kualitas terbaik - Tangerang | 2024-11-21 | root@localhost | <- // Punya tes awal
| P4321   | V005    | Business Software |    2500000 | Solusi bisnis eksklusif - Tangerang         | 2024-11-21 | root@localhost | <- // Punya tes akhir
+---------+---------+-------------------+------------+---------------------------------------------+------------+----------------+
2 rows in set (0.001 sec)

