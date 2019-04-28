{ NIM : 16518230 }
{ Nama : Muhammad Naufal Fakhrizal }
{ Tanggal : 5 April 2019 }
{ Topik : Skema Standar }
program caricharacter;

var
	tabc : array [1 .. 100] of char;
	i, n : integer;
	cc : char;
begin
	readln(n);
	while (n <= 0) or (n > 100) do begin
		writeln('Masukan salah. Ulangi!');
		readln(n);
	end;
	for i := 1 to n do begin
		readln(tabc[i]);
	end;
	readln(cc);
	if (cc = 's') or (cc = 'S') then begin
		i := 1;
		while ((tabc[i] < 'a') or (tabc[i] > 'z')) and (i < n) do begin
			i += 1;
		end;
		if ((tabc[i] >= 'a') and (tabc[i] <= 'z')) then begin
			writeln(i,  ' ', tabc[i]);
		end else begin
			writeln('Tidak ada huruf kecil');
		end;
	end else if (cc = 'l') or (cc = 'L') then begin
		i := 1;
		while ((tabc[i] < 'A') or (tabc[i] > 'Z')) and (i < n) do begin
			i += 1;
		end;
		if ((tabc[i] >= 'A') and (tabc[i] <= 'Z')) then begin
			writeln(i,  ' ', tabc[i]);
		end else begin
			writeln('Tidak ada huruf besar');
		end;
	end else if (cc = 'x') or (cc = 'X') then begin
		i := 1;
		while (((tabc[i] >= 'A') and (tabc[i] <= 'Z')) or ((tabc[i] >= 'a') and (tabc[i] <= 'z')))  and (i < n) do begin
			i += 1;
		end;
		if (((tabc[i] < 'A') or (tabc[i] > 'Z')) and ((tabc[i] < 'a') or (tabc[i] > 'z'))) then begin
			writeln(i,  ' ', tabc[i]);
		end else begin
			writeln('Semua huruf');
		end;
	end else begin
		writeln('Tidak diproses')
	end;
end.

