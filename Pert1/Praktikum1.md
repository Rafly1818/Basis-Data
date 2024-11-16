# 📊 Praktikum 1

Selamat datang di repositori **Database Praktikum**! 🎓  
Repositori ini berisi informasi dan script SQL Praktikum Basis Data.

---

## 📘 Tugas Pertemuan 1

**Tugas Praktikum Pertama**  
Pada praktikum pertama ini, kita akan mempelajari dasar-dasar pengelolaan database dengan membuat sebuah database bernama **praktikum**. Database ini dirancang untuk menyimpan informasi terkait kegiatan praktikum, seperti nama mahasiswa, NIM, jadwal praktikum, ruangan, dan dosen pengajar.  

💡 **Melalui tugas ini, diharapkan Anda mampu:**  
1️⃣ Memahami langkah-langkah pembuatan database.  
2️⃣ Membuat tabel dengan struktur yang sesuai kebutuhan.  
3️⃣ Menginput data ke dalam tabel menggunakan perintah SQL.  
4️⃣ Memahami konsep dasar relasi data dalam sebuah database.

✨ **Selamat mengerjakan!** Semoga tugas ini membantu Anda memahami dasar pengelolaan database! ✨

---

## 📋 Tahapan Query SQL

Berikut adalah script SQL untuk membuat database dan tabelnya:

### 1. Pembuatan Database `praktikum`
```sql
CREATE DATABASE praktikum;

SHOW DATABASES;
```
Berikut adalah daftar database setelah pembuatan database `praktikum`:

| Database |
|-------------------------|
| `information_schema`    |
| `mysql`                 |
| `performance_schema`    |
| `phpmyadmin`            |
| `praktikum`             |

### 2. Pembuatan Table `praktikum`
```sql
USE praktikum;

CREATE TABLE praktikum (
    nama VARCHAR(30),
    nim VARCHAR(30),
    jam VARCHAR(30),
    hari VARCHAR(30),
    ruangan VARCHAR(30),
    dosen VARCHAR(30)
);

SHOW tables;
```
Berikut adalah daftar table setelah pembuatan table `praktikum`:

| Tables_in_praktikum  |
|----------------------|
| `praktikum`          |

### 3. Isi Table `praktikum`
```sql
INSERT INTO praktikum (nama, nim, jam, hari, ruangan, dosen)
VALUES ('Rafly Akbar Ravsanjani', '20230801401', '16.20', 'Kamis', 'CR 401', 'RANNY MEILISA , S.Kom., M.Pd.T.');

SELECT * FROM praktikum;
```
Berikut adalah data yang terdapat pada tabel `praktikum`:

| Nama | NIM | Jam | Hari | Ruangan | Dosen |
|------------------------|-------------|-------|-------|---------|--------------------------------|
| Rafly Akbar Ravsanjani | 20230801401 | 16.20 | Kamis | CR 401  | RANNY MEILISA , S.Kom., M.Pd.T |


---

## 📌 Kesimpulan

🎯 **Kesimpulan Praktikum 1**  
Pada praktikum pertama ini, kita telah berhasil mempelajari dan mempraktikkan dasar-dasar pembuatan dan pengelolaan database menggunakan SQL.  

📍 **Poin yang telah dicapai:**  
- Membuat database bernama `praktikum`.  
- Membuat tabel dengan nama `praktikum` yang berisi informasi terkait kegiatan praktikum.  
- Menginput data ke dalam tabel dan menampilkannya menggunakan query `SELECT`.  

🚀 **Hasil akhir:**  
Database `praktikum` telah selesai dibuat dan siap digunakan untuk menyimpan data praktikum secara terstruktur dan terorganisasi.  

💪 **Selamat! Anda telah berhasil menyelesaikan tugas praktikum pertama.** Terus semangat belajar dan kembangkan keterampilan Anda di bidang database! 🌟

