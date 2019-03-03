--NIM/Nama  : 16518230/Muhammad Naufal Fakhrizal
--Nama File : CountIf.hs
--Topik     : Aspek Fungsi dalam Parameter Fungsi
--Tanggal   : 3 Maret 2019
--Deskripsi : Menghitung banyak elemen list yang mmemenuhi ppersamaan.

module CountIf where

-- DEFINISI DAN SPESIFIKASI LIST..
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

-- DEFINISI DAN DESKRIPSI
countIf :: [Int] -> (Int -> Bool) ->  Int
-- Menghitung banyaknya elemen list yang memenuhi kondisi yang ditentukan oleh fungsi
isLebih5 :: Int -> Bool
isBetween :: Int -> Bool
isEqual10:: Int -> Bool

-- REALISASI
countIf l f 
    | isEmpty l = 0 -- basis
    | f (head l) = 1 + countIf (tail l) f -- rekurens
    | otherwise = countIf (tail l) f -- rekurens
isLebih5 x = x > 5
isBetween x = (x >= 0) && (x <= 100)
isEqual10 x = x == 10
