Microsoft Windows [Version 10.0.22631.4169]
(c) Microsoft Corporation. All rights reserved.

C:\Users\USER>cd c:\xampp\mysql\bin

c:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 11
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.
Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database praktikum;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| praktikum          |
+--------------------+
7 rows in set (0.001 sec)

MariaDB [(none)]> use praktikum;
Database changed
MariaDB [praktikum]> CREATE TABLE praktikum (
    -> nama varchar(30),
    -> nim varchar(30),
    -> jam varchar(30),
    -> hari varchar(30),
    -> ruangan varchar(30),
    -> dosen varchar(30) );
Query OK, 0 rows affected (0.019 sec)

MariaDB [praktikum]> INSERT INTO praktikum (nama,nim,jam,hari,ruangan,dosen)
       value ('Rafly Akbar Ravsanjani','20230801401','16.20','Kamis','CR 401','RANNY MEILISA , S.Kom., M.Pd.T.');
Query OK, 1 row affected, 1 warning (0.042 sec)

MariaDB [praktikum]> SELECT * FROM praktikum;
+------------------------+-------------+-------+-------+---------+--------------------------------+
| nama                   | nim         | jam   | hari  | ruangan | dosen                          |
+------------------------+-------------+-------+-------+---------+--------------------------------+
| Rafly Akbar Ravsanjani | 20230801401 | 16.20 | Kamis | CR 401  | RANNY MEILISA , S.Kom., M.Pd.T |
+------------------------+-------------+-------+-------+---------+--------------------------------+