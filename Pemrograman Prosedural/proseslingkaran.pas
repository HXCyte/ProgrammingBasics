{ NIM : 16518230 }
{ Nama : Muhammad Naufal Fakhrizal }
{ Tanggal : 22 Maret 2019 }
{ Topik : Dekomposisi, Abstraksi, dan Generalisasi Pola dalam Konteks Pemrograman Prosedura }
 
Program ProsesLingkaran;
{ Input: 2 buah Lingkaran }
{ Output: luas, keliling, dan hubungan lingkaran A dan B }
 
{ KAMUS }
const
        PI : real = 3.1415;
type
        { Definisi Type Koordinat }
        Koordinat = record
                       x : real;
                       y : real;
        end;
        { Definisi Type Lingkaran }
        Lingkaran = record
                      c : Koordinat; { titik pusat lingkaran }
                      r : real;      { jari-jari, > 0 }
        end;
var
        A, B : Lingkaran;
 
{ FUNGSI DAN PROSEDUR }
procedure InputLingkaran (var A : Lingkaran);
{ I.S.: A sembarang }
{ F.S.: A terdefinisi sesuai dengan masukan pengguna. Pemasukan jari-jari diulangi 
        sampai didapatkan jari-jari yang benar yaitu r > 0. Pemeriksaan apakah jari-
        jari valid menggunakan fungsi IsRValid.
        Jika jari-jari tidak valid, dikeluarkan pesan kesalahan “Jari-jari harus > 0”. }
begin
    readln(A.c.x, A.c.y);
    readln(A.r);
    while (A.r <= 0) do begin
        writeln('Jari-jari harus > 0');
        readln(A.r);
    end;
end;
 
function KelilingLingkaran (A : Lingkaran) : real;
{ Menghasilkan keliling lingkaran A = 2 * PI * A.r }
begin
    KelilingLingkaran := 2 * PI * A.r;
end;
 
function LuasLingkaran (A : Lingkaran) : real; { lengkapi parameter dan type hasil }
{ Menghasilkan luas lingkaran A = PI * A.r * A.r }
begin
    LuasLingkaran := PI * A.r * A.r;
end;
 
function Jarak (P1, P2 : Koordinat) : real;
{ Menghasilkan jarak antara P1 dan P2 }
begin
    Jarak := sqrt((P2.x - P1.x) * (P2.x - P1.x) + (P2.y - P1.y) * (P2.y - P1.y));
end;

function HubunganLingkaran (A, B : Lingkaran) : integer;
{ Menghasilkan integer yang menyatakan hubungan lingkaran A dan B, yaitu:
  1 = A dan B sama;
  2 = A dan B berimpit; 
  3 = A dan B beririsan;
  4 = A dan B bersentuhan;
  5 = A dan B saling lepas }
{KAMUS LOKAL}
var
    dist, sumr : real;
begin
    dist := Jarak(A.c, B.c);
    sumr := A.r + B.r;
    {writeln(A.c.x:0:2, ' ', sumr:0:2);}
    if (A.c.x = B.c.x) and (A.c.y = B.c.y) and (A.r = B.r) then begin
        HubunganLingkaran := 1;
    end else if (dist = 0.0) then begin
        HubunganLingkaran := 2;
    end else if (dist < sumr) then begin
        HubunganLingkaran := 3;
    end else if (dist = sumr) then begin
        HubunganLingkaran := 4;
    end else begin {dist > sumr}
        HubunganLingkaran := 5;
    end;
end;
 
{ ALGORITMA PROGRAM UTAMA }
begin
        writeln('Masukkan lingkaran A:');
        InputLingkaran(A);
        writeln('Masukkan lingkaran B:');
        InputLingkaran(B);
        writeln('Keliling lingkaran A = ', KelilingLingkaran(A):0:2); 
        writeln('Luas lingkaran A = ', LuasLingkaran(A):0:2);
        writeln('Keliling lingkaran B = ', KelilingLingkaran(B):0:2);
        writeln('Luas lingkaran B = ', LuasLingkaran(B):0:2);
        write('A dan B adalah ');
        case HubunganLingkaran(A, B) of
            1 : writeln('sama');
            2 : writeln('berimpit');
            3 : writeln('beririsan');
            4 : writeln('bersentuhan');
            5 : writeln('saling lepas');
        end;
end. 