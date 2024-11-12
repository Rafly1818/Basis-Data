Microsoft Windows [Version 10.0.22631.4317]
(c) Microsoft Corporation. All rights reserved.

C:\Users\USER>cd c:/xampp/mysql/bin

c:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 12
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

MariaDB [(none)]> use orderentry
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
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| cust_id      | char(4)     | NO   | PRI | NULL    |       |
| cust_name    | varchar(50) | YES  |     | NULL    |       |
| cust_address | varchar(50) | YES  |     | NULL    |       |
| cust_city    | varchar(25) | YES  |     | NULL    |       |
| cust_country | varchar(20) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
5 rows in set (0.010 sec)

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
5 rows in set (0.010 sec)

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
5 rows in set (0.012 sec)

MariaDB [orderentry]> desc vendors;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| vend_id      | char(4)     | NO   | PRI | NULL    |       |
| vend_nama    | varchar(25) | NO   |     | NULL    |       |
| vend_address | varchar(30) | YES  |     | NULL    |       |
| vend_city    | varchar(20) | YES  |     | NULL    |       |
| vend_country | varchar(15) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
5 rows in set (0.011 sec)

MariaDB [orderentry]> select * from customers;
+---------+-----------+----------------+-----------+--------------+
| cust_id | cust_name | cust_address   | cust_city | cust_country |
+---------+-----------+----------------+-----------+--------------+
| 1855    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
| 2198    | Galih     | Graha Lestari  | Aceh      | Indonesia    |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |
| 7634    | Lina      | Graha Pesona   | Makassar  | Indonesia    |
| 9247    | Eri       | Graha Siena    | Medan     | Indonesia    |
+---------+-----------+----------------+-----------+--------------+
5 rows in set (0.000 sec)

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
5 rows in set (0.000 sec)

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
+---------+--------------------+--------------------------+-----------+--------------+
| vend_id | vend_nama          | vend_address             | vend_city | vend_country |
+---------+--------------------+--------------------------+-----------+--------------+
| V001    | PT Maju Bersama    | Jl. Raya Serpong No. 123 | Tangerang | Indonesia    |
| V002    | CV Sukses Mandiri  | Jl. Gatot Subroto 45     | Jakarta   | Indonesia    |
| V003    | UD Berkah Jaya     | Jl. Ahmad Yani 67        | Bandung   | Indonesia    |
| V004    | PT Global Solution | Jl. Sudirman 89          | Jakarta   | Indonesia    |
| V005    | CV Makmur Sejati   | Jl. Diponegoro 12        | Surabaya  | Indonesia    |
+---------+--------------------+--------------------------+-----------+--------------+
5 rows in set (0.000 sec)

MariaDB [orderentry]>


=================================================================================================
					TUGAS
=================================================================================================



MariaDB [orderentry]> desc customers;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| cust_id      | char(4)     | NO   | PRI | NULL    |       |
| cust_name    | varchar(50) | YES  |     | NULL    |       |
| cust_address | varchar(50) | YES  |     | NULL    |       |
| cust_city    | varchar(25) | YES  |     | NULL    |       |
| cust_country | varchar(20) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
5 rows in set (0.013 sec)

MariaDB [orderentry]> select * from customers;
+---------+-----------+----------------+-----------+--------------+
| cust_id | cust_name | cust_address   | cust_city | cust_country |
+---------+-----------+----------------+-----------+--------------+
| 1855    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
| 2198    | Galih     | Graha Lestari  | Aceh      | Indonesia    |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |
| 7634    | Lina      | Graha Pesona   | Makassar  | Indonesia    |
| 9247    | Eri       | Graha Siena    | Medan     | Indonesia    |
+---------+-----------+----------------+-----------+--------------+
5 rows in set (0.038 sec)

MariaDB [orderentry]> select * from customers order by cust_name asc;
+---------+-----------+----------------+-----------+--------------+
| cust_id | cust_name | cust_address   | cust_city | cust_country |
+---------+-----------+----------------+-----------+--------------+
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |
| 9247    | Eri       | Graha Siena    | Medan     | Indonesia    |
| 2198    | Galih     | Graha Lestari  | Aceh      | Indonesia    |
| 7634    | Lina      | Graha Pesona   | Makassar  | Indonesia    |
| 1855    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
+---------+-----------+----------------+-----------+--------------+
5 rows in set (0.001 sec)

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
5 rows in set (0.011 sec)

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

MariaDB [orderentry]> select * from orderitems order by quantity desc;
+-----------+------------+---------+----------+--------------------+
| order_num | order_item | prod_id | quantity | warehouse_location |
+-----------+------------+---------+----------+--------------------+
|      1003 |          1 | P6543   |       20 | Tangerang          |
|      1001 |          1 | P1234   |       10 | Tangerang          |
|      1004 |          1 | P4321   |        7 | Tangerang          |
|      1001 |          2 | P5678   |        5 | Tangerang          |
|      1002 |          1 | P9876   |        2 | Tangerang          |
+-----------+------------+---------+----------+--------------------+
5 rows in set (0.001 sec)

MariaDB [orderentry]> select
    -> count(quantity) as Banyaknya,
    -> sum(quantity) as Total,
    -> avg(quantity) as Rata_Rata,
    -> min(quantity) as Jumlah_Minimal,
    -> max(quantity) as Jumlah_Maksimal
    -> from orderitems;
+-----------+-------+-----------+----------------+-----------------+
| Banyaknya | Total | Rata_Rata | Jumlah_Minimal | Jumlah_Maksimal |
+-----------+-------+-----------+----------------+-----------------+
|         5 |    44 |    8.8000 |              2 |              20 |
+-----------+-------+-----------+----------------+-----------------+
1 row in set (0.001 sec)

MariaDB [orderentry]> select order_num, sum(quantity) as total_quantity
    -> from orderitems
    -> group by order_num
    -> having total_quantity between 5 and 10;
+-----------+----------------+
| order_num | total_quantity |
+-----------+----------------+
|      1004 |              7 |
+-----------+----------------+
1 row in set (0.001 sec)

MariaDB [orderentry]> desc vendors;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| vend_id      | char(4)     | NO   | PRI | NULL    |       |
| vend_nama    | varchar(25) | NO   |     | NULL    |       |
| vend_address | varchar(30) | YES  |     | NULL    |       |
| vend_city    | varchar(20) | YES  |     | NULL    |       |
| vend_country | varchar(15) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
5 rows in set (0.015 sec)

MariaDB [orderentry]> select * from vendors;
+---------+--------------------+--------------------------+-----------+--------------+
| vend_id | vend_nama          | vend_address             | vend_city | vend_country |
+---------+--------------------+--------------------------+-----------+--------------+
| V001    | PT Maju Bersama    | Jl. Raya Serpong No. 123 | Tangerang | Indonesia    |
| V002    | CV Sukses Mandiri  | Jl. Gatot Subroto 45     | Jakarta   | Indonesia    |
| V003    | UD Berkah Jaya     | Jl. Ahmad Yani 67        | Bandung   | Indonesia    |
| V004    | PT Global Solution | Jl. Sudirman 89          | Jakarta   | Indonesia    |
| V005    | CV Makmur Sejati   | Jl. Diponegoro 12        | Surabaya  | Indonesia    |
+---------+--------------------+--------------------------+-----------+--------------+
5 rows in set (0.003 sec)

MariaDB [orderentry]> select * from vendors
    -> where vend_city = 'Jakarta';
+---------+--------------------+----------------------+-----------+--------------+
| vend_id | vend_nama          | vend_address         | vend_city | vend_country |
+---------+--------------------+----------------------+-----------+--------------+
| V002    | CV Sukses Mandiri  | Jl. Gatot Subroto 45 | Jakarta   | Indonesia    |
| V004    | PT Global Solution | Jl. Sudirman 89      | Jakarta   | Indonesia    |
+---------+--------------------+----------------------+-----------+--------------+
2 rows in set (0.001 sec)

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
5 rows in set (0.014 sec)

MariaDB [orderentry]> SELECT * FROM products;
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

MariaDB [orderentry]> SELECT p.prod_name, v.vend_nama
    -> FROM products p
    -> JOIN vendors v ON p.vend_id = v.vend_id
    -> WHERE p.prod_name LIKE '%p%'
    ->    OR p.prod_name LIKE '%P%'
    ->    OR v.vend_nama LIKE '%p%'
    ->    OR v.vend_nama LIKE '%P%';
+---------------------+--------------------+
| prod_name           | vend_nama          |
+---------------------+--------------------+
| Premium Chair       | PT Maju Bersama    |
| Ergonomic Mouse     | PT Global Solution |
| Professional Laptop | UD Berkah Jaya     |
+---------------------+--------------------+
3 rows in set (0.001 sec)

MariaDB [orderentry]> SELECT prod_name AS 'Nama Produk',
    -> CONCAT('Rp ', FORMAT(prod_price, 0)) AS 'Harga'
    -> FROM products;
+---------------------+---------------+
| Nama Produk         | Harga         |
+---------------------+---------------+
| Premium Chair       | Rp 750,000    |
| Business Software   | Rp 2,500,000  |
| Office Desk         | Rp 1,200,000  |
| Ergonomic Mouse     | Rp 450,000    |
| Professional Laptop | Rp 15,000,000 |
+---------------------+---------------+
5 rows in set (0.001 sec)

MariaDB [orderentry]>
