--NIM/Nama  : 16518230/Muhammad Naufal Fakhrizal
--Nama File : FilterList.hs
--Topik     : Aspek Fungsi dalam Parameter Fungsi
--Tanggal   : 3 Maret 2019
--Deskripsi : Melakukan filter pada list.

module FilterList where

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
filterList :: [Int] -> (Int -> Bool) ->  [Int]
-- Melakukan filter pada setiap elemen list sesuai yang ditentukan oleh fungsi parameter
isPos :: Int -> Bool
isNeg :: Int -> Bool
isEqual10 :: Int -> Bool
isKabisat :: Int -> Bool

-- REALISASI
filterList l f
    | isEmpty l = [] -- basis
    | f (head l) = konso (head l) (filterList (tail l) f) -- rekurens
    | otherwise = filterList (tail l) f

isPos x = x > 0
isNeg x = x < 0
isEqual10 x = x == 10
isKabisat x = mod x 4 == 0