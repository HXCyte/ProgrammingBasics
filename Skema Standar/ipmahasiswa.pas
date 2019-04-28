{ NIM : 16518230 }
{ Nama : Muhammad Naufal Fakhrizal }
{ Tanggal : 5 April 2019 }
{ Topik : Skema Standar }
program ipmahasiswa;

function IsWithinRange (X : real; min, max : real) : boolean;
{ Menghasilkan true jika min <= X <= max, menghasilkan false jika tidak }
begin
	IsWithinRange := (X >= min) and (X <= max);
end;

var
	nMsw, nLulus : integer;
	cIP, sumIP, avgIP : real;
begin
	nMsw := 0;
	nLulus := 0;
	sumIP := 0.0;
	read(cIP);
	while (cIP <> -999) do begin
		if (IsWithinRange(cIP, 0.00, 4.00)) then begin
			nMsw += 1;
			sumIP += cIP;
			if (cIP >= 2.75) then
				nLulus += 1;
		end;
		read(cIP);
	end;
	if (nMsw <= 0) then begin
		writeln('Tidak ada data');
	end else begin {nMsw > 0}
		avgIP := sumIP / nMsw;
		writeln(nMsw);
		writeln(nLulus);
		writeln(nMsw - nLulus);
		writeln(avgIP:0:2);
	end;
end.