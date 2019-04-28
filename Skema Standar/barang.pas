{ NIM : 16518230 }
{ Nama : Muhammad Naufal Fakhrizal }
{ Tanggal : 5 April 2019 }
{ Topik : Skema Standar }
program barang;
{ Menghitung total harga barang }
var
	n, i, h, th : integer;
begin
	th := 0;
	readln(n);
	for i := 1 to n do begin
		readln(h);
		th += h;
	end;
	writeln(th);
end.