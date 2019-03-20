{NIM : 16518230}
{Nama : Muhammad Naufal Fakhrizal}
{Tanggal : 20 Maret 2019}
{Topik : Pemrograman Prosedural}
Program Array1;
{Spesfikasi: Menghitung angka positif, negatif, atau nol pada array}
{KAMUS}
var
	arr1: array [1..100] of integer;
	arr2: array [1..100] of integer;
	n, k, x, i, nCond : integer;
{ALGORITMA}
begin
	readln(n);
	if (n > 0 ) then begin
		nCond := 0;
		for i := 1 to n do begin
			readln(x);
			arr1[i] := x;
		end;
		readln(k);
		for i := 1 to n do begin
			if ((k = 1) and (arr1[i] > 0)) or ((k = 0) and (arr1[i] = 0)) or ((k = -1) and (arr1[i] < 0)) then begin
				nCond += 1;
				arr2[nCond] := arr1[i];
			end; {else do nothing}
		end;
		writeln(nCond);
		if (k <> 0) then begin
			for i := 1 to nCond do begin
				writeln(arr2[i]);
			end;
		end;
	end else begin {n <= 0}
		writeln('Tidak ada bilangan');
	end;
end.
				
	
