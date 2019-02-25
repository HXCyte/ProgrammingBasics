--NIM/Nama  : 16518230/Muyhammad Naufal Fakhrizal
--Nama File : NbKelipatanX.hs
--Topik     : Rekurens dan List
--Tanggal   : 25 Februari 2019
--Deskripsi : Menghitung jumlah kelipatan x

module NbKelipatanX where

-- DEFINISI DAN DESKRIPSI
nbKelipatanX :: Int -> Int -> Int -> Int
-- nbKelipatanX(m, n, x) menghitung banyak kelipatan x di antara m dan n
-- REALISASI
nbKelipatanX m n x 
    | m == n = if (mod n x == 0) then 1 else 0 -- basis n
    | m < n = if (mod n x == 0) then nbKelipatanX m (n - 1) x + 1 else nbKelipatanX m (n - 1) x -- rekurens
    
-- APLIKASI
-- nbKelipatanX 1 24 3
