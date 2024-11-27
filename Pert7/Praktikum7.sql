Nama: Rafly Akbar Ravsanjani
NIM: 20230801401
Pertemuan 7

C:\Users\USER>cd c:/xampp/mysql/bin

c:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

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
8 rows in set (0.001 sec)

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
7 rows in set (0.001 sec)

MariaDB [orderentry]> desc customers;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| cust_id      | char(4)      | NO   | PRI | NULL    |       |
| cust_name    | varchar(50)  | YES  |     | NULL    |       |
| cust_address | varchar(50)  | YES  |     | NULL    |       |
| cust_city    | varchar(25)  | YES  |     | NULL    |       |
| cust_state   | varchar(25)  | YES  |     | NULL    |       |
| cust_country | varchar(20)  | YES  |     | NULL    |       |
| kode_pos     | varchar(5)   | YES  |     | NULL    |       |
| cust_contact | varchar(50)  | YES  |     | NULL    |       |
| cust_email   | varchar(100) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
9 rows in set (0.016 sec)

MariaDB [orderentry]> desc orderitems;
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| order_num          | int(11)     | NO   | PRI | NULL    |       |
| order_item         | int(11)     | NO   | PRI | NULL    |       |
| prod_id            | varchar(10) | NO   |     | NULL    |       |
| quantity           | int(11)     | NO   |     | NULL    |       |
| warehouse_location | varchar(50) | YES  |     | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
5 rows in set (0.053 sec)

MariaDB [orderentry]> desc orders;
+------------+---------+------+-----+---------+-------+
| Field      | Type    | Null | Key | Default | Extra |
+------------+---------+------+-----+---------+-------+
| order_num  | int(11) | NO   | PRI | NULL    |       |
| order_date | date    | NO   |     | NULL    |       |
| cust_id    | char(5) | NO   |     | NULL    |       |
+------------+---------+------+-----+---------+-------+
3 rows in set (0.013 sec)

MariaDB [orderentry]> desc productnotes;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| note_id   | char(3)      | NO   | PRI | NULL    |       |
| prod_id   | varchar(10)  | NO   | MUL | NULL    |       |
| note_date | date         | NO   |     | NULL    |       |
| note_text | varchar(200) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.048 sec)

MariaDB [orderentry]> desc products;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| prod_id    | varchar(10)  | NO   | PRI | NULL    |       |
| vend_id    | char(4)      | NO   |     | NULL    |       |
| prod_name  | varchar(25)  | NO   |     | NULL    |       |
| prod_price | int(11)      | NO   |     | NULL    |       |
| prod_desc  | varchar(255) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.050 sec)

MariaDB [orderentry]> desc vendors;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| vend_id      | char(4)     | NO   | PRI | NULL    |       |
| vend_nama    | varchar(25) | NO   |     | NULL    |       |
| vend_address | varchar(30) | YES  |     | NULL    |       |
| vend_city    | varchar(20) | YES  |     | NULL    |       |
| vend_state   | varchar(20) | YES  |     | NULL    |       |
| vend_zip     | varchar(10) | YES  |     | NULL    |       |
| vend_country | varchar(15) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.048 sec)

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
5 rows in set (0.008 sec)

MariaDB [orderentry]> select * from orderitems;
+-----------+------------+---------+----------+--------------------+
| order_num | order_item | prod_id | quantity | warehouse_location |
+-----------+------------+---------+----------+--------------------+
|      1001 |          1 | P1234   |       10 | Tangerang          |
|      1001 |          2 | P5678   |        5 | Tangerang          |
|      1002 |          1 | P9876   |        2 | Tangerang          |
|      1003 |          1 | P6543   |       20 | Tangerang          |
|      1004 |          1 | P4321   |        7 | Tangerang          |
+-----------+------------+---------+----------+--------------------+
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

MariaDB [orderentry]> select * from productnotes;
+---------+---------+------------+-----------------------------------------------+
| note_id | prod_id | note_date  | note_text                                     |
+---------+---------+------------+-----------------------------------------------+
| 001     | P1234   | 2024-10-15 | Produk premium kualitas terbaik - Tangerang   |
| 002     | P4321   | 2024-10-20 | Solusi bisnis eksklusif - Tangerang           |
| 003     | P5678   | 2024-10-25 | Kualitas terbaik harga terjangkau - Tangerang |
| 004     | P6543   | 2024-11-01 | Inovasi desain ergonomis - Tangerang          |
| 005     | P9876   | 2024-11-05 | Pilihan profesional bergaransi - Tangerang    |
+---------+---------+------------+-----------------------------------------------+
5 rows in set (0.001 sec)

MariaDB [orderentry]> select * from products;
+---------+---------+---------------------+------------+-----------------------------------------------+
| prod_id | vend_id | prod_name           | prod_price | prod_desc                                     |
+---------+---------+---------------------+------------+-----------------------------------------------+
| P1234   | V001    | Premium Chair       |     750000 | Produk premium kualitas terbaik - Tangerang   |
| P4321   | V005    | Business Software   |    2500000 | Solusi bisnis eksklusif - Tangerang           |
| P5678   | V002    | Office Desk         |    1200000 | Kualitas terbaik harga terjangkau - Tangerang |
| P6543   | V004    | Ergonomic Mouse     |     450000 | Inovasi desain ergonomis - Tangerang          |
| P9876   | V003    | Professional Laptop |   15000000 | Pilihan profesional bergaransi - Tangerang    |
+---------+---------+---------------------+------------+-----------------------------------------------+
5 rows in set (0.001 sec)

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

======================
	TUGAS
======================

1. Carilah nama vendor yang harga barangnya termurah
MariaDB [orderentry]> SELECT vend_nama, prod_name, prod_price
    -> FROM vendors
    -> JOIN products ON vendors.vend_id = products.vend_id
    -> ORDER BY prod_price ASC
    -> LIMIT 1;
+--------------------+-----------------+------------+
| vend_nama          | prod_name       | prod_price |
+--------------------+-----------------+------------+
| PT Global Solution | Ergonomic Mouse |     450000 |
+--------------------+-----------------+------------+
1 row in set (0.001 sec)
//Dari data yang ada, vendor yang menjual barang termurah adalah PT Global Solution dengan produk Ergonomic Mouse seharga Rp 450.000



2. Tampilkan kota -kota dari vendor product jetpack harganya dibawah 55.
MariaDB [orderentry]> SELECT vend_nama, vend_city, prod_name, prod_price
    -> FROM vendors
    -> JOIN products ON vendors.vend_id = products.vend_id
    -> WHERE prod_price < 550000;
+--------------------+-----------+-----------------+------------+
| vend_nama          | vend_city | prod_name       | prod_price |
+--------------------+-----------+-----------------+------------+
| PT Global Solution | Jakarta   | Ergonomic Mouse |     450000 |
+--------------------+-----------+-----------------+------------+
1 row in set (0.000 sec)
//Kota vendor dengan produk dibawah 550.000 adalah Jakarta (untuk Ergonomic Mouse Rp 450.000)



3. Siapa sajakah customer yang melakukan order tanggal 01-09-2005 (Tanggalnya beda)
MariaDB [orderentry]> SELECT c.cust_name, o.order_date, o.order_num
    -> FROM customers c
    -> JOIN orders o ON c.cust_id = o.cust_id
    -> WHERE o.order_date = '2024-10-25';
+-----------+------------+-----------+
| cust_name | order_date | order_num |
+-----------+------------+-----------+
| Budi      | 2024-10-25 |      1003 |
+-----------+------------+-----------+
1 row in set (0.004 sec)
//Hasil query menunjukkan bahwa hanya ada 1 customer, yaitu Budi, yang melakukan order pada tanggal 2024-10-25. 



4. Dimanakah alamat lengkap customer (Kota,negara,kodepos) yang melakukan pembelian barang sama dengan customer no 10001 (beda cust_id)? 
MariaDB [orderentry]> SELECT DISTINCT c.cust_name, c.cust_address, c.cust_city, c.cust_state, c.cust_country, c.kode_pos
    -> FROM customers c
    -> JOIN orders o ON c.cust_id = o.cust_id
    -> JOIN orderitems oi ON o.order_num = oi.order_num
    -> WHERE oi.prod_id IN (
    ->     SELECT oi.prod_id
    ->     FROM orderitems oi
    ->     JOIN orders o ON oi.order_num = o.order_num
    ->     WHERE o.cust_id = '1855'
    -> );
+-----------+---------------+-----------+---------------------+--------------+----------+
| cust_name | cust_address  | cust_city | cust_state          | cust_country | kode_pos |
+-----------+---------------+-----------+---------------------+--------------+----------+
| Paijo     | Graha Segovia | Bandung   | Jalan Segovia No.10 | Indonesia    | 40123    |
+-----------+---------------+-----------+---------------------+--------------+----------+
1 row in set (0.002 sec)
//Hasil query menunjukkan bahwa hanya ada 1 customer, yaitu Paijo, yang memiliki alamat lengkap Graha Segovia, Bandung, Jalan Segovia No.10, Indonesia, 40123, dan membeli produk yang sama dengan customer 10001.



5. Siapakah nama customer dan email contaknya , yang paling boros belanja (dilihat dari pembelian barang paling banyak) ?
MariaDB [orderentry]> SELECT c.cust_name, c.cust_email, SUM(oi.quantity) as total_pembelian
    -> FROM customers c
    -> JOIN orders o ON c.cust_id = o.cust_id
    -> JOIN orderitems oi ON o.order_num = oi.order_num
    -> GROUP BY c.cust_name, c.cust_email
    -> ORDER BY total_pembelian DESC
    -> LIMIT 1;
+-----------+------------------+-----------------+
| cust_name | cust_email       | total_pembelian |
+-----------+------------------+-----------------+
| Budi      | budi@example.com |              20 |
+-----------+------------------+-----------------+
1 row in set (0.001 sec)
//Hasil query menunjukkan bahwa customer dengan nama Budi (dengan email budi@example.com) adalah customer yang paling boros belanja, dengan total pembelian sebanyak 20 item.

MariaDB [orderentry]>