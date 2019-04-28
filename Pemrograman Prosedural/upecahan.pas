{ NIM : 16518230 }
{ Nama : Muhammad Naufal Fakhrizal }
{ Tanggal : 22 Maret 2019 }
{ Topik : Dekomposisi, Abstraksi, dan Generalisasi Pola dalam Konteks Pemrograman Prosedural }

unit upecahan;
 
interface
    { Type pecahan }
    type pecahan = record
    	n : integer;
    	d : integer;
    end;

    { Deklarasi Fungsi/Prosedur }
    function IsPecahanValid (n, d : integer) : boolean;
    { Menghasilkan true jika n dan d dapat membentuk pecahan yang valid dengan n 
  		sebagai pembilang dan d sebagai penyebut, yaitu jika n >= 0 dan d > 0 }
    procedure TulisPecahan (P : pecahan);
    { Menuliskan pecahan P ke layar dalam bentuk "P.n/P.d" }
	{ Tidak diawali, diselangi, atau diakhiri dengan karakter apa pun, termasuk spasi 
		atau pun enter }
	{ I.S.: P terdefinisi }
	{ F.S.: P tercetak di layar dalam bentuk "P.n/P.d" }
    function IsLebihKecil (P1, P2 : pecahan) : boolean;
    { Menghasilkan true jika P1 lebih kecil dari P2 }
	{ pecahan <n1,d1> lebih kecil dari pecahan <n2,d2> jika dan hanya jika: 
  		n1*d2 < n2*d1 }
    function Selisih (P1, P2 : pecahan) : pecahan;
    { Menghasilkan pecahan selisih antara P1 dengan P2 atau P1 - P2 }
	{ Selisih pecahan <n1,d1> dengan <n2,d2> menghasilkan pecahan <n3,d3> dengan:
  		n3 = n1*d2 - n2*d1 dan d3 = d1*d2. }
	{ Prekondisi : P1 >= P2 }

implementation
	{ Implementasi Fungsi/Prosedur }
	function IsPecahanValid (n, d : integer) : boolean;
    { Menghasilkan true jika n dan d dapat membentuk pecahan yang valid dengan n 
  		sebagai pembilang dan d sebagai penyebut, yaitu jika n >= 0 dan d > 0 }
  	begin
  		IsPecahanValid := (n >= 0) and (d > 0);
  	end;

    procedure TulisPecahan (P : pecahan);
    { Menuliskan pecahan P ke layar dalam bentuk "P.n/P.d" }
	{ Tidak diawali, diselangi, atau diakhiri dengan karakter apa pun, termasuk spasi 
		atau pun enter }
	{ I.S.: P terdefinisi }
	{ F.S.: P tercetak di layar dalam bentuk "P.n/P.d" }
  	begin
  		write(P.n, '/', P.d);
  	end;

  	function IsLebihKecil (P1, P2 : pecahan) : boolean;
    { Menghasilkan true jika P1 lebih kecil dari P2 }
	{ pecahan <n1,d1> lebih kecil dari pecahan <n2,d2> jika dan hanya jika: 
  		n1*d2 < n2*d1 }
  	begin
  		IsLebihKecil := ((P1.n * P2.d) < (P2.n * P1.d));
  	end;

    function Selisih (P1, P2 : pecahan) : pecahan;
    { Menghasilkan pecahan selisih antara P1 dengan P2 atau P1 - P2 }
	{ Selisih pecahan <n1,d1> dengan <n2,d2> menghasilkan pecahan <n3,d3> dengan:
  		n3 = n1*d2 - n2*d1 dan d3 = d1*d2. }
	{ Prekondisi : P1 >= P2 }
	begin
		Selisih.n := P1.n * P2.d - P2.n * P1.d;
		Selisih.d := P1.d * P2.d;
	end;
end.
