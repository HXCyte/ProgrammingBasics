{NIM : 16518230}
{Nama : Muhammad Naufal Fakhrizal}
{Tanggal : 20 Maret 2019}
{Topik : Pemrograman Prosedural}
Program JumlahDeret;
{Spesfikasi: Menghitung deret 1+2+3+...+N}
{KAMUS}
var
	n, h: integer;
{ALGORITMA}
begin
	readln(n);
	h := (n * (n + 1)) div 2;
	writeln(h);
end.
