Microsoft Windows [Version 10.0.22000.1219]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LENOVO>cd "C:\Program Files\PostgreSQL\14\bin"

C:\Program Files\PostgreSQL\14\bin>psql -U postgres -h localhost
Password for user postgres:
psql (14.6)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# \c siakad_inf
You are now connected to database "siakad_inf" as user "postgres".
siakad_inf=# \dt
           List of relations
 Schema |   Name    | Type  |  Owner
--------+-----------+-------+----------
 public | dosen     | table | postgres
 public | kuliah    | table | postgres
 public | mahasiswa | table | postgres
(3 rows)


siakad_inf=# select * from mahasiswa;
   nim    |        nama        |    prodi
----------+--------------------+-------------
 D0221100 | DOLANDRE FERBIANTO | INFORMATIKA
 D0221103 | YUNUS              | INFORMATIKA
 D0221101 | yohanis            | INFROMATIKA
(3 rows)


siakad_inf=# delete from mahasiswa where nim='D0221103';
DELETE 1
siakad_inf=# select * from mahasiswa;
   nim    |        nama        |    prodi
----------+--------------------+-------------
 D0221100 | DOLANDRE FERBIANTO | INFORMATIKA
 D0221101 | yohanis            | INFROMATIKA
(2 rows)


siakad_inf=# select * from dosen;
   nidn    |     nama     | program_studi
-----------+--------------+---------------
  32567491 | MUZAKI       | INFORMATIKA
  24165347 | ALAMSYAH     | INFORMATIKA
 132465364 | Fuad Mansyur | INFORMATIKA
(3 rows)


siakad_inf=# delete from dosen where nidn= 32567491;
DELETE 1
siakad_inf=# select * from dosen;
   nidn    |     nama     | program_studi
-----------+--------------+---------------
  24165347 | ALAMSYAH     | INFORMATIKA
 132465364 | Fuad Mansyur | INFORMATIKA
(2 rows)


siakad_inf=# select * from kuliah;
 kode_makul |    nama_makul     | sks | semeter
------------+-------------------+-----+---------
 INF216543  | APLIKASI KOMPUTER |   3 |       3
 INF215673  | BAHASA INGGRIS    |   3 |       3
 INF210054  | MIKRO             |   2 |       3
(3 rows)


siakad_inf=# delete from kuliah where kode_makul= 'INF215673';
DELETE 1
siakad_inf=# select * from kuliah;
 kode_makul |    nama_makul     | sks | semeter
------------+-------------------+-----+---------
 INF216543  | APLIKASI KOMPUTER |   3 |       3
 INF210054  | MIKRO             |   2 |       3
(2 rows)


siakad_inf=#