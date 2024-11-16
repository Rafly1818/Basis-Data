C:\Users\USER>cd c:\xampp\mysql\bin

c:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 13
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database OrderEntry;
Query OK, 1 row affected (0.002 sec)

MariaDB [OrderEntry]> create table vendors(
    -> vend_id          CHAR(4) NOT NULL PRIMARY KEY ,
    -> vend_nama        VARCHAR(25) NOT NULL,
    -> vend_address     VARCHAR(30),
    -> vend_city        VARCHAR(20),
    -> vend_state       VARCHAR(5),
    -> vend_zip         VARCHAR(7),
    -> vend_country     VARCHAR(15));
Query OK, 0 rows affected (0.029 sec)

MariaDB [OrderEntry]> create table customers(
    -> cust_id          CHAR(4) NOT NULL PRIMARY KEY ,
    -> cust_name        VARCHAR(25) NOT NULL,
    -> cust_address     VARCHAR(30) NULL,
    -> cust_city        VARCHAR(25) NULL,
    -> cust_state       VARCHAR(5) NULL,
    -> cust_zip         VARCHAR(5) NULL,
    -> cust_country     VARCHAR(20) NULL,
    -> cust_contact     VARCHAR(25) NULL,
    -> cust_email       VARCHAR(30) NULL);
Query OK, 0 rows affected (0.028 sec)

MariaDB [OrderEntry]> create table products (
    -> prod_id          VARCHAR(10) NOT NULL PRIMARY KEY,
    -> vend_id          CHAR(4) NOT NULL ,
    -> prod_name        VARCHAR(25) NOT NULL ,
    -> prod_price       INT NOT NULL ,
    -> prod_desc        VARCHAR(255) NULL);
Query OK, 0 rows affected (0.025 sec)

MariaDB [OrderEntry]> create table orders (
    -> order_num        INT NOT NULL ,
    -> order_date       DATE NOT NULL ,
    -> cust_id          CHAR(5) NOT NULL ,
    -> PRIMARY KEY(order_num));
Query OK, 0 rows affected (0.026 sec)

MariaDB [OrderEntry]> create table productnotes (
    -> note_id          CHAR(3) NOT NULL ,
    -> prod_id          VARCHAR(10) NOT NULL ,
    -> note_date        DATE NOT NULL,
    -> note_text        VARCHAR(200) NULL,
    -> PRIMARY KEY (note_id),
    -> FOREIGN KEY (prod_id) REFERENCES products (prod_id));
Query OK, 0 rows affected (0.040 sec)

MariaDB [OrderEntry]> create table orderitems (
    -> order_num        INT NOT NULL,
    -> order_item       INT NOT NULL,
    -> prod_id          VARCHAR(10) NOT NULL,
    -> quantity         INT NOT NULL,
    -> PRIMARY KEY (order_num, order_item));
Query OK, 0 rows affected (0.025 sec)

MariaDB [OrderEntry]> show tables;
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