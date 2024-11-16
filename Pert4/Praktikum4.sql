Microsoft Windows [Version 10.0.22631.4169]
(c) Microsoft Corporation. All rights reserved.

C:\Users\USER>cd c:/xampp/mysql/bin

c:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 10
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


==================TUGAS 1===================


MariaDB [(none)]> use orderentry;
Database changed

MariaDB [orderentry]> show tables;
+----------------------+
| Tables_in_orderentry |
+----------------------+
| customers            |
| orderitems           |
| orders               |
| productnotes         |
| products             |
| vendors              |
+----------------------+
6 rows in set (0.001 sec)

MariaDB [orderentry]> desc customers;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| cust_id      | char(4)     | NO   | PRI | NULL    |       |
| cust_name    | varchar(25) | NO   |     | NULL    |       |
| cust_address | varchar(30) | YES  |     | NULL    |       |
| cust_city    | varchar(25) | YES  |     | NULL    |       |
| cust_state   | varchar(5)  | YES  |     | NULL    |       |
| cust_zip     | varchar(5)  | YES  |     | NULL    |       |
| cust_country | varchar(20) | YES  |     | NULL    |       |
| cust_contact | varchar(25) | YES  |     | NULL    |       |
| cust_email   | varchar(30) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
9 rows in set (0.054 sec)

MariaDB [orderentry]> alter table customers change cust_name Nama_Customer varchar(50);
Query OK, 0 rows affected (0.064 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [orderentry]> desc customers;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| cust_id       | char(4)     | NO   | PRI | NULL    |       |
| Nama_Customer | varchar(50) | YES  |     | NULL    |       |
| cust_address  | varchar(30) | YES  |     | NULL    |       |
| cust_city     | varchar(25) | YES  |     | NULL    |       |
| cust_state    | varchar(5)  | YES  |     | NULL    |       |
| cust_zip      | varchar(5)  | YES  |     | NULL    |       |
| cust_country  | varchar(20) | YES  |     | NULL    |       |
| cust_contact  | varchar(25) | YES  |     | NULL    |       |
| cust_email    | varchar(30) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
9 rows in set (0.047 sec)

MariaDB [orderentry]> alter table customers modify cust_address varchar(50);

Query OK, 0 rows affected (0.047 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [orderentry]> desc customers;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| cust_id       | char(4)     | NO   | PRI | NULL    |       |
| Nama_Customer | varchar(50) | YES  |     | NULL    |       |
| cust_address  | varchar(50) | YES  |     | NULL    |       |
| cust_city     | varchar(25) | YES  |     | NULL    |       |
| cust_state    | varchar(5)  | YES  |     | NULL    |       |
| cust_zip      | varchar(5)  | YES  |     | NULL    |       |
| cust_country  | varchar(20) | YES  |     | NULL    |       |
| cust_contact  | varchar(25) | YES  |     | NULL    |       |
| cust_email    | varchar(30) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
9 rows in set (0.012 sec)

MariaDB [orderentry]> alter table customers add cust_planet varchar(50);
Query OK, 0 rows affected (0.012 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [orderentry]> desc customers;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
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
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.047 sec)



==================TUGAS 2===================


MariaDB [orderentry]> show tables;
+----------------------+
| Tables_in_orderentry |
+----------------------+
| customers            |
| orderitems           |
| orders               |
| productnotes         |
| products             |
| vendors              |
+----------------------+
6 rows in set (0.001 sec)

MariaDB [orderentry]> create table contact_customer (
    -> Id_cust          varchar(5) NOT NULL PRIMARY KEY,
    -> HP1              varchar(20) NOT NULL,
    -> HP2              varchar(20) NOT NULL);
Query OK, 0 rows affected (0.025 sec)

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

MariaDB [orderentry]> desc contact_customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| Id_cust | varchar(5)  | NO   | PRI | NULL    |       |
| HP1     | varchar(20) | NO   |     | NULL    |       |
| HP2     | varchar(20) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.011 sec)

MariaDB [orderentry]> alter table contact_customer change Id_cust Nama_Cust varchar(50);
Query OK, 0 rows affected (0.014 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [orderentry]> desc contact_customer;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Nama_Cust | varchar(50) | NO   | PRI | NULL    |       |
| HP1       | varchar(20) | NO   |     | NULL    |       |
| HP2       | varchar(20) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.014 sec)

MariaDB [orderentry]> alter table contact_customer modify HP1 varchar(50);
Query OK, 0 rows affected (0.063 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [orderentry]> desc contact_customer;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Nama_Cust | varchar(50) | NO   | PRI | NULL    |       |
| HP1       | varchar(50) | YES  |     | NULL    |       |
| HP2       | varchar(20) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.010 sec)

MariaDB [orderentry]> alter table contact_customer add HP3 varchar(50);
Query OK, 0 rows affected (0.012 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [orderentry]> desc contact_customer;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Nama_Cust | varchar(50) | NO   | PRI | NULL    |       |
| HP1       | varchar(50) | YES  |     | NULL    |       |
| HP2       | varchar(20) | NO   |     | NULL    |       |
| HP3       | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.011 sec)

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

