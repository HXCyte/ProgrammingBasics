{ NIM : 16518230 }
{ Nama : Muhammad Naufal Fakhrizal }
{ Tanggal : 5 Aprol 2019 }
{ Topik : Skema Standar }

program lingkaran;
{ Menghitung luas lingkaran. dilakukan validasi agar r > 0 }
const
	PI = 3.1415;
var
	r, a : real;
begin
	readln(r);
	if (r > 0) then begin
		a := PI * r * r;
		writeln(a:0:2);
	end else begin {r <= 0}
		writeln('Jari-jari harus > 0');
	end;
end.