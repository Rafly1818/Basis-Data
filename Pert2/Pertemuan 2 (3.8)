C:\Users\USER>cd c:\xampp\mysql\bin

c:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 10
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database Penjualan_Barang;
Query OK, 1 row affected (0.103 sec)

MariaDB [(none)]> create database Penjualan_Barang;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> use Penjualan_Barang;
Database changed
MariaDB [Penjualan_Barang]> create table Pelanggan (
    -> Id_Pelanggan INT PRIMARY KEY,
    -> Nama VARCHAR(100),
    -> Alamat VARCHAR(255),
    -> Pekerjaan VARCHAR(100),
    -> No_Ktp VARCHAR(50),
    -> No_Telp VARCHAR(20)
    -> );
Query OK, 0 rows affected (0.057 sec)

MariaDB [Penjualan_Barang]> create table Barang (
    -> Id_Barang INT PRIMARY KEY,
    -> Nama_Barang VARCHAR(100),
    -> Harga DECIMAL(10, 2),
    -> Stok INT
    -> );
Query OK, 0 rows affected (0.057 sec)

MariaDB [Penjualan_Barang]> CREATE TABLE Nota_Penjualan (
    -> Id_Nota INT PRIMARY KEY,
    -> Tgl_Nota DATE,
    -> Total DECIMAL(10, 2),
    -> Id_Pelanggan INT,
    -> FOREIGN KEY (Id_Pelanggan) REFERENCES Pelanggan(Id_Pelanggan)
    -> );
Query OK, 0 rows affected (0.081 sec)

MariaDB [Penjualan_Barang]> CREATE TABLE Detail_Jual (
    -> Id_Nota INT,
    -> Id_Barang INT,
    -> Jumlah INT,
    -> Harga DECIMAL(10, 2),
    -> PRIMARY KEY (Id_Nota, Id_Barang),
    -> FOREIGN KEY (Id_Nota) REFERENCES Nota_Penjualan(Id_Nota),
    -> FOREIGN KEY (Id_Barang) REFERENCES Barang(Id_Barang)
    -> );
Query OK, 0 rows affected (0.042 sec)

MariaDB [Penjualan_Barang]> show tables;
+----------------------------+
| Tables_in_penjualan_barang |
+----------------------------+
| barang                     |
| detail_jual                |
| nota_penjualan             |
| pelanggan                  |
+----------------------------+
4 rows in set (0.001 sec)

MariaDB [Penjualan_Barang]> DESCRIBE barang;
+-------------+---------------+------+-----+---------+-------+
| Field       | Type          | Null | Key | Default | Extra |
+-------------+---------------+------+-----+---------+-------+
| Id_Barang   | int(11)       | NO   | PRI | NULL    |       |
| Nama_Barang | varchar(100)  | YES  |     | NULL    |       |
| Harga       | decimal(10,2) | YES  |     | NULL    |       |
| Stok        | int(11)       | YES  |     | NULL    |       |
+-------------+---------------+------+-----+---------+-------+
4 rows in set (0.049 sec)

MariaDB [Penjualan_Barang]> DESCRIBE detail_jual;
+-----------+---------------+------+-----+---------+-------+
| Field     | Type          | Null | Key | Default | Extra |
+-----------+---------------+------+-----+---------+-------+
| Id_Nota   | int(11)       | NO   | PRI | NULL    |       |
| Id_Barang | int(11)       | NO   | PRI | NULL    |       |
| Jumlah    | int(11)       | YES  |     | NULL    |       |
| Harga     | decimal(10,2) | YES  |     | NULL    |       |
+-----------+---------------+------+-----+---------+-------+
4 rows in set (0.049 sec)

MariaDB [Penjualan_Barang]> DESCRIBE nota_penjualan;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| Id_Nota      | int(11)       | NO   | PRI | NULL    |       |
| Tgl_Nota     | date          | YES  |     | NULL    |       |
| Total        | decimal(10,2) | YES  |     | NULL    |       |
| Id_Pelanggan | int(11)       | YES  | MUL | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
4 rows in set (0.049 sec)

MariaDB [Penjualan_Barang]> DESCRIBE pelanggan;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Id_Pelanggan | int(11)      | NO   | PRI | NULL    |       |
| Nama         | varchar(100) | YES  |     | NULL    |       |
| Alamat       | varchar(255) | YES  |     | NULL    |       |
| Pekerjaan    | varchar(100) | YES  |     | NULL    |       |
| No_Ktp       | varchar(50)  | YES  |     | NULL    |       |
| No_Telp      | varchar(20)  | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
6 rows in set (0.048 sec)