{ NIM : 16518230 }
{ Nama : Muhammad Naufal Fakhrizal }
{ Tanggal : 5 April 2019 }
{ Topik : Skema Standar }
program suhu;

var
	tabt : array [1 .. 20] of integer;
	tmax, tmin, i : integer;
begin
	for i := 1 to 20 do begin
		readln(tabt[i]);
	end;
	tmax := tabt[1];
	tmin := tabt[1];
	writeln('[H1]', tabt[1]);
	for i := 2 to 20 do begin
		writeln('[H', i, ']', tabt[i]);
		if (tabt[i] > tmax) then begin
			tmax := tabt[i];
		end;
		if (tabt[i] < tmin) then begin
			tmin := tabt[i];
		end;
	end;
	writeln('Tertinggi = ', tmax);
	writeln('Terendah = ', tmin);
end.

