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
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| cust_id      | char(4)     | NO   | PRI | NULL    |       |
| cust_name    | varchar(50) | YES  |     | NULL    |       |
| cust_address | varchar(50) | YES  |     | NULL    |       |
| cust_city    | varchar(25) | YES  |     | NULL    |       |
| cust_country | varchar(20) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
5 rows in set (0.011 sec)

MariaDB [orderentry]> select * from customers;
+---------+-----------+----------------+-----------+--------------+
| cust_id | cust_name | cust_address   | cust_city | cust_country |
+---------+-----------+----------------+-----------+--------------+
| 0998    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |
+---------+-----------+----------------+-----------+--------------+
2 rows in set (0.001 sec)

MariaDB [orderentry]> insert into customers(cust_id, cust_name, cust_address, cust_city, cust_country) values('1975', 'Doni', 'Graha Pesona', 'Medan', 'Indonesia');
Query OK, 1 row affected (0.045 sec)

MariaDB [orderentry]> select * from customers;
+---------+-----------+----------------+-----------+--------------+
| cust_id | cust_name | cust_address   | cust_city | cust_country |
+---------+-----------+----------------+-----------+--------------+
| 0998    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
| 1975    | Doni      | Graha Pesona   | Medan     | Indonesia    |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |
+---------+-----------+----------------+-----------+--------------+
3 rows in set (0.001 sec)

MariaDB [orderentry]> insert into customers(cust_id, cust_name, cust_address, cust_city, cust_country) values('2198', 'Galih', 'Graha Lestari', 'Aceh', 'Ind
onesia');
Query OK, 1 row affected (0.007 sec)

MariaDB [orderentry]> select * from customers;
+---------+-----------+----------------+-----------+--------------+
| cust_id | cust_name | cust_address   | cust_city | cust_country |
+---------+-----------+----------------+-----------+--------------+
| 0998    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
| 1975    | Doni      | Graha Pesona   | Medan     | Indonesia    |
| 2198    | Galih     | Graha Lestari  | Aceh      | Indonesia    |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |
+---------+-----------+----------------+-----------+--------------+
4 rows in set (0.001 sec)

MariaDB [orderentry]> insert into customers(cust_id, cust_name, cust_address, cust_city, cust_country) values('9247', 'Eri', 'Graha Siena', 'Medan', 'Indone
sia');
Query OK, 1 row affected (0.007 sec)

MariaDB [orderentry]> select * from customers;
+---------+-----------+----------------+-----------+--------------+
| cust_id | cust_name | cust_address   | cust_city | cust_country |
+---------+-----------+----------------+-----------+--------------+
| 0998    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
| 1975    | Doni      | Graha Pesona   | Medan     | Indonesia    |
| 2198    | Galih     | Graha Lestari  | Aceh      | Indonesia    |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |
| 9247    | Eri       | Graha Siena    | Medan     | Indonesia    |
+---------+-----------+----------------+-----------+--------------+
5 rows in set (0.001 sec)

MariaDB [orderentry]> update customers
    -> set cust_id = '1855'
    -> where cust_name = 'Paijo';
Query OK, 1 row affected (0.006 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [orderentry]> select * from customers;
+---------+-----------+----------------+-----------+--------------+
| cust_id | cust_name | cust_address   | cust_city | cust_country |
+---------+-----------+----------------+-----------+--------------+
| 1855    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
| 1975    | Doni      | Graha Pesona   | Medan     | Indonesia    |
| 2198    | Galih     | Graha Lestari  | Aceh      | Indonesia    |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |
| 9247    | Eri       | Graha Siena    | Medan     | Indonesia    |
+---------+-----------+----------------+-----------+--------------+
5 rows in set (0.001 sec)

MariaDB [orderentry]> delete from customers
    -> where cust_name = 'Doni';
Query OK, 1 row affected (0.007 sec)

MariaDB [orderentry]> select * from customers;
+---------+-----------+----------------+-----------+--------------+
| cust_id | cust_name | cust_address   | cust_city | cust_country |
+---------+-----------+----------------+-----------+--------------+
| 1855    | Paijo     | Graha Segovia  | Bandung   | Indonesia    |
| 2198    | Galih     | Graha Lestari  | Aceh      | Indonesia    |
| 2428    | Budi      | Graha Raflesia | Jakarta   | Indonesia    |
| 9247    | Eri       | Graha Siena    | Medan     | Indonesia    |
+---------+-----------+----------------+-----------+--------------+
4 rows in set (0.001 sec)

MariaDB [orderentry]> select cust_name, cust_address from customers;
+-----------+----------------+
| cust_name | cust_address   |
+-----------+----------------+
| Paijo     | Graha Segovia  |
| Galih     | Graha Lestari  |
| Budi      | Graha Raflesia |
| Eri       | Graha Siena    |
+-----------+----------------+
4 rows in set (0.000 sec)

MariaDB [orderentry]> select * from customers
    -> where cust_id = '1855';
+---------+-----------+---------------+-----------+--------------+
| cust_id | cust_name | cust_address  | cust_city | cust_country |
+---------+-----------+---------------+-----------+--------------+
| 1855    | Paijo     | Graha Segovia | Bandung   | Indonesia    |
+---------+-----------+---------------+-----------+--------------+
1 row in set (0.000 sec)