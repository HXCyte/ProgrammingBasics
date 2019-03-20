{NIM : 16518230}
{Nama : Muhammad Naufal Fakhrizal}
{Tanggal : 20 Maret 2019}
{Topik : Pemrograman Prosedural}
Program SegiEmpat;
{Spesfikasi: Membuat segiempat}
{KAMUS}
var
	c1, c2: char;
	n, i, j: integer;
{ALGORITMA}
begin
	readln(n);
	readln(c1);
	readln(c2);
	if (c1 <> c2) and (n > 0) then begin
		for i := 1 to N do begin
			for j := 1 to N do begin
				if (i = 1) or (i = n) or (j = 1) or (j = n) then begin
					write(c1);
				end else begin
					write(c2);
				end;
			end;
			writeln('');
		end;
	end else begin
		writeln('Masukan tidak valid');
	end;
end.
