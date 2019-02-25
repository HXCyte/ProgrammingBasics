--NIM/Nama  : 16518230/Muyhammad Naufal Fakhrizal
--Nama File : CountEvenDigits.hs
--Topik     : Rekurens dan List
--Tanggal   : 25 Februari 2019
--Deskripsi : Menghitung banyak digit genap pada x

module CountEvenDigits where

-- DEFINISI DAN DESKRIPSI
countEvenDigits :: Int -> Int
-- countEvenDigits(x) menghitung banyak digit genap pada x
countEvenDigitsRecc :: Int -> Int -> Int
-- countEvenDigitsRecc(m, n) memeriksa jika digit n genap
-- REALISASI
countEvenDigits x
    | x == 0 = 1
    | x > 0 = countEvenDigitsRecc (div x 10) (mod x 10)
    
countEvenDigitsRecc m n
    | m == 0 = if (mod n 2 == 0) then 1 else 0 -- basis 0
    | m > 0 = if (mod n 2 == 0) then countEvenDigitsRecc (div m 10) (mod m 10) + 1 else countEvenDigitsRecc (div m 10) (mod m 10) -- rekurens
    
-- APLIKASI
-- nbKelipatanX 1 24 3
