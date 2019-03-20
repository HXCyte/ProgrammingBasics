{NIM : 16518230}
{Nama : Muhammad Naufal Fakhrizal}
{Tanggal : 20 Maret 2019}
{Topik : Pemrograman Prosedural}
Program HargaMakanan;
{Spesfikasi: Menghitung harga makanan}
{KAMUS}
var
	n, i, harga, makanan: integer;
{ALGORITMA}
begin
	readln(n);
	harga := 0;
	for i := 1 to n do begin
		readln(makanan);
		if (i mod 2 = 0) then begin
			harga += makanan * 200;
		end else begin {i mod 2 <> 0}
			harga += makanan * 100;
		end;
	end;
	writeln(harga, ' rupiah');
end.
