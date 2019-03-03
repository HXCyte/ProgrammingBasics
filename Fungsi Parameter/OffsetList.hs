--NIM/Nama  : 16518230/Muhammad Naufal Fakhrizal
--Nama File : OffsetList.hs
--Topik     : Aspek Fungsi dalam Parameter Fungsi
--Tanggal   : 3 Maret 2019
--Deskripsi : Melakukan offset pada list.

module OffsetList where

-- DEFINISI DAN SPESIFIKASI LIST
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
offsetList :: [Int] -> (Int -> Int) ->  [Int]
-- Melakukan offset pada setiap elemen list sesuai yang ditentukan oleh fungsi parameter
plus2 :: Int -> Int
minus1 :: Int -> Int
offKond :: Int -> Int

-- REALISASI
offsetList l offset 
    | isEmpty l = [] -- basis
    | otherwise = konso (offset (head l)) (offsetList (tail l) offset) -- rekurens
plus2 x = x + 2
minus1 x = x - 1
offKond x
    | (x >= 0) && (x <= 40) = 10
    | x < 0 = 0
    | x > 40 = 20