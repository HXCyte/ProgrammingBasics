{ NIM : 16518230 }
{ Nama : Muhammad Naufal Fakhrizal }
{ Tanggal : 5 April 2019 }
{ Topik : Skema Standar }
program nilai;

function IsWithinRange (X : real; min, max : real) : boolean;
{ Menghasilkan true jika min <= X <= max, menghasilkan false jika tidak }
begin
	IsWithinRange := (X >= min) and (X <= max);
end;

var
	nMsw, nLulus : integer;
	cn, sumn, avgn : real;
begin
	nMsw := 0;
	nLulus := 0;
	sumn := 0.0;
	read(cn);
	if (cn = -9999) then begin
		writeln('Data nilai kosong');
	end else begin{sIP <> -9999}
		repeat
			if (IsWithinRange(cn, 0.00, 100.00)) then begin
				nMsw += 1;
				sumn += cn;
				if (cn >= 40.00) then
					nLulus += 1;
			end;
			read(cn);
		until (cn = -9999);
		
		if (nMsw <= 0) then begin
			writeln(0);
		end else begin {nMsw > 0}
			avgn := sumn / nMsw;
			writeln(nMsw);
			writeln(nLulus);
			writeln(nMsw - nLulus);
			writeln(avgn:0:2);
		end;
	end;
end.