{ NIM : 16518230 }
{ Nama : Muhammad Naufal Fakhrizal }
{ Tanggal : 5 April 2019 }
{ Topik : Skema Standar }
program bilangan;

var
	tabint : array [1 .. 100] of integer;
	i, x, n : integer;
begin
	readln(n);
	while (n <= 0) or (n > 100) do begin
		writeln('Masukan salah. Ulangi!');
		readln(n);
	end;
	for i := 1 to n do begin
		readln(tabint[i]);
	end;
	readln(x);
	if (x = 0) then begin
		i := 1;
		while (tabint[i] <> 0) and (i < n) do begin
			i += 1;
		end;
		if (tabint[i] = 0) then begin
			writeln(i);
		end else begin
			writeln('Tidak ada 0');
		end;
	end else if (x = 1) then begin
		i := 1;
		while (tabint[i] <= 0) and (i < n) do begin
			i += 1;
		end;
		if (tabint[i] > 0) then begin
			writeln(i, ' ', tabint[i]);
		end else begin
			writeln('Tidak ada positif');
		end;
	end else if (x = -1) then begin
		i := 1;
		while (tabint[i] >= 0) and (i < n) do begin
			i += 1;
		end;
		if (tabint[i] < 0) then begin
			writeln(i, ' ', tabint[i]);
		end else begin
			writeln('Tidak ada negatif');
		end;
	end else begin
		writeln('Tidak diproses')
	end;
end.

