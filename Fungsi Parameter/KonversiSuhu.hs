--NIM/Nama  : 16518230/Muhammad Naufal Fakhrizal
--Nama File : KonversiSuhu.hs
--Topik     : Aspek Fungsi dalam Parameter Fungsi
--Tanggal   : 3 Maret 2019
--Deskripsi : Melakukan konversi suhu.

module KonversiSuhu where

-- DEFINISI DAN DESKRIPSI
konversiSuhu :: Float -> (Float -> Float) -> Float
{- KonversiSuhu(t,f) dengan T merepresentasikan suhu dalam  derajat tertentu dan fungsi f yang merupakan
fungsi konversi suhu, menghasilkan konversi t ke suhu pada derajat tertentu berdasarkan fungsi f. -}
konversiCtoK :: Float -> Float
konversiRtoC :: Float -> Float

-- REALISASI
konversiSuhu t f = f t
konversiCtoK t = t + 273.15
konversiRtoC t = t * 5 / 4
