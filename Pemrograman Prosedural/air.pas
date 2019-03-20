{NIM : 16518230}
{Nama : Muhammad Naufal Fakhrizal}
{Tanggal : 20 Maret 2019}
{Topik : Pemrograman Prosedural}
Program Air;
{Spesfikasi: Menentukan wujud air}
{KAMUS}
var
	t: integer;
{ALGORITMA}
begin
	readln(t);
	if (t < 0) then begin
		writeln('PADAT');
	end else if (t = 0) then begin
		writeln('ANTARA PADAT-CAIR');
	end else if (t > 0) and (t < 100) then begin
		writeln('CAIR');
	end else if (t = 100) then begin
		writeln('ANTARA CAIR-GAS');
	end else begin {t > 100}
		writeln('GAS');
	end;
end.
	
