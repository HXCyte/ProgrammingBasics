--NIM/Nama  : 16518230/Muhammad Naufal Fakhrizal
--Nama File : InfoNilaiMaks.hs
--Topik     : Rekurens dan List
--Tanggal   : 25 Februari 2019
--Deskripsi : Menghitung banyak siswa yang lulus dan nilai tertinggi.

module InfoNilaiMaks where
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
infoNilaiMaks :: [Int] -> (Int, Int)
-- infoNilaiMaks(l) mengembalikan tuple banyak siswa yang lulus (nilai> 75) dan nilai tertinggi
infoRecc :: [Int] -> Int -> Int -> (Int, Int)
-- infoRecc(l, lulus, nmax) memeriksa apakah suatu elemen lulus dan merupakan nilai tertinggi
-- REALISASI
infoNilaiMaks l = infoRecc l 0 0
infoRecc l lulus nmax
    | isOneElmt l = (if head l >= 75 then lulus + 1 else lulus, if head l > nmax then head l else nmax) -- basis 1
    | (head l >= 75) && (head l > nmax) = infoRecc (tail l) (lulus + 1) (head l) -- rekurens
    | (head l >= 75) && (head l <= nmax) = infoRecc (tail l) (lulus + 1) (nmax) 
    | (head l < 75) && (head l > nmax) = infoRecc (tail l) (lulus) (head l) 
    | (head l < 75) && (head l <= nmax) = infoRecc (tail l) (lulus) (nmax) 

    
    

