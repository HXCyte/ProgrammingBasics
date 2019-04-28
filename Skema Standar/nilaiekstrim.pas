{ NIM : 16518230 }
{ Nama : Muhammad Naufal Fakhrizal }
{ Tanggal : 5 April 2019 }
{ Topik : Skema Standar }
program nilaiekstrim;

var
	tabint : array [1 .. 100] of integer;
	tmax, tmin, i, n, x : integer;
	found : boolean;
begin
	found := false;
	readln(n);
	for i := 1 to n do begin
		readln(tabint[i]);
	end;
	readln(x);
	tmax := tabint[1];
	tmin := tabint[1];
	found := (x = tabint[1]);
	for i := 2 to n do begin
		if (tabint[i] > tmax) then begin
			tmax := tabint[i];
		end;
		if (tabint[i] < tmin) then begin
			tmin := tabint[i];
		end;
		if (not found) then begin
			found := (x = tabint[i]);
		end;
	end;
	if (found) then begin
		if (x = tmax) then begin
			writeln('maksimum');
			if (x = tmin) then begin
				writeln('minimum');
			end;
		end else if (x = tmin) then begin
			writeln('minimum');
		end else begin
			writeln('N#A');
		end;
	end else begin
		writeln(x, ' tidak ada');
	end;
end.

