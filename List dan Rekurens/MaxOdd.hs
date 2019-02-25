--NIM/Nama  : 16518230/Muhammad Naufal Fakhrizal
--Nama File : MaxOdd.hs
--Topik     : Rekurens dan List
--Tanggal   : 25 Februari 2019
--Deskripsi : Menentukan nilai dan banyak elemen ganjil terbannyak.

module MaxOdd where
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

-- DEFINISI DAN SPESIFIKASI
maxOdd :: [Int] -> (Int, Int)
-- maxOdd(l) mengembalikan tuple berisi nilai dan banyak dari elemen ganjil terbanyak pada list dan mengembalikan (-1, 0) jika tidak ada elemen ganjil
maxOddRecc :: [Int] -> Int -> Int -> (Int, Int)
-- maxOddRecc(l,x,n) memeriksa tiap elemen dan membandingkan banyak elemen jika elemen ganjil
countElmt :: [Int] -> Int -> Int
-- countElmt(l,x) mengembalikan banyak elemen x pada list.
-- REALISASI
maxOdd l = maxOddRecc l 0 0
maxOddRecc l x n
    | isOneElmt l = if (mod (head l) 2 == 1) then (if countElmt l (head l) > n then (head l, countElmt l (head l)) else (if x == 0 then (-1, 0) else (x, n))) else (if x == 0 then (-1, 0) else (x, n)) -- basis 1
    | mod (head l) 2 == 1 = if countElmt l (head l) > n then maxOddRecc (tail l) (head l) (countElmt l (head l)) else maxOddRecc (tail l) x n -- rekurens
    | otherwise = maxOddRecc (tail l) x n -- rekurens
countElmt l x
    | isOneElmt l = if (head l == x) then 1  else 0 -- basis  0
    | otherwise = if (head l == x) then 1 + countElmt (tail l) x else countElmt (tail l) x -- rekurens

    
    

