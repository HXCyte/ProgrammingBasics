{NIM : 16518230}
{Nama : Muhammad Naufal Fakhrizal}
{Tanggal : 20 Maret 2019}
{Topik :}
Program LuasTrapesium;
{Spesfikasi: Menghitung luas trapesium}
{KAMUS}
var
	t, s1, s2, l:real;
{ALGORITMA}
begin
	readln(t);
	readln(s1);
	readln(s2);
	l := 0.5 * t * (s1 + s2);
	writeln(l:0:2);
end.
