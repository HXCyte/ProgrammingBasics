{NIM : 16518230}
{Nama : Muhammad Naufal Fakhrizal}
{Tanggal : 20 Maret 2019}
{Topik : Pemrograman Prosedural}
Program Beasiswa;
{Spesfikasi: Menentukan kategori beasiswa}
{KAMUS}
var
	ip, pot: real;
	k: integer;
{ALGORITMA}
begin
	readln(ip);
	readln(pot);
	if (ip >= 3.5) then begin
		k := 4;
	end else if (ip < 3.5) and (pot < 1.0) then begin
		k := 1;
	end else if (ip < 3.5) and (ip >= 2.0) and (pot >= 1.0) and (pot < 5) then begin
		k := 3;
	end else if (ip < 2.0) and (pot >= 1.0) and (pot < 5) then begin
		k := 2;
	end else begin {selain kategori di atas}
		k := 0;
	end;
	writeln(k);
end.
