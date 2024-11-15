# 📊 Database Praktikum

Selamat datang di repositori **Database Praktikum**! 🎓  
Repositori ini berisi informasi dan script SQL untuk mengelola data jadwal praktikum.

---

## 🛠 Struktur Tabel

Berikut adalah struktur tabel `praktikum`:

| Kolom    | Tipe Data  | Deskripsi                              |
|----------|------------|----------------------------------------|
| `nama`   | VARCHAR(30)| Nama mahasiswa                        |
| `nim`    | VARCHAR(30)| Nomor Induk Mahasiswa                 |
| `jam`    | VARCHAR(30)| Jam praktikum                         |
| `hari`   | VARCHAR(30)| Hari praktikum                        |
| `ruangan`| VARCHAR(30)| Ruangan tempat praktikum berlangsung  |
| `dosen`  | VARCHAR(30)| Nama dosen pengajar                   |

---

## 📋 Query SQL

Berikut adalah script SQL untuk membuat database dan tabelnya:

```sql
CREATE DATABASE praktikum;

USE praktikum;

CREATE TABLE praktikum (
    nama VARCHAR(30),
    nim VARCHAR(30),
    jam VARCHAR(30),
    hari VARCHAR(30),
    ruangan VARCHAR(30),
    dosen VARCHAR(30)
);

INSERT INTO praktikum (nama, nim, jam, hari, ruangan, dosen)
VALUES ('Rafly Akbar Ravsanjani', '20230801401', '16.20', 'Kamis', 'CR 401', 'RANNY MEILISA , S.Kom., M.Pd.T.');
```

![MySQL](https://img.shields.io/badge/Database-MySQL-blue)
