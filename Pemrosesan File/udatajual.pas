{ NIM/Nama : 16518230/Muhammad Naufal Fakhrizal }
{ Topik : Pemrosesan File }
 

unit udatajual;

{ Lengkapi dengan spesifikasi unit }

 

{ DEKLARASI TYPE FUNGSI DAN PROSEDUR }

interface

    const

        NMAX = 100;

    type

        dataJual  = record

                KdKategori: string; { Kode kategori produk }

                KdProduk : string; { Kode produk }

                Hasil : integer; 

        end;

        tabPenjualan = record

                TJual : array [1..NMAX] of dataJual;
                Neff : integer;

        end;

 

    { DEKLARASI FUNGSI DAN PROSEDUR }

    function EOP (rek : dataJual) : boolean;

    { Menghasilkan true jika rek = mark }

    procedure LoadDataJual (filename : string; var T : tabPenjualan);

    { I.S. : filename terdefinisi, T sembarang }

    { F.S. : Tabel T terisi data hasil penjualan dengan data yang dibaca

             dari file dg nama = filename

             T.Neff = 0 jika tidak ada file kosong;

             T diisi dengan seluruh isi file atau sampai T penuh. }

    procedure UrutKategoriAsc (var T : tabPenjualan);

    { I.S. : T terdefinisi; T mungkin kosong }

    { F.S. : Isi tabel T terurut membesar menurut KdKategori. T tetap jika T kosong. }

    { Proses : Gunakan salah satu algoritma sorting yang diajarkan di kelas.

               Tuliskan nama algoritmanya dalam bentuk komentar. }

    procedure HitungRataRata (T : tabPenjualan);

    { I.S. : T terdefinisi; T mungkin kosong }

    { F.S. : Menampilkan KdKategori dan hasil penjualan rata-rata per KdKategori

             yang ada dalam tabel dengan format: <KdKategori>=<rata-rata>

             Nilai rata-rata dibulatkan ke integer terdekat. Gunakan fungsi round.}

    { Proses : Menggunakan ide algoritma konsolidasi tanpa separator pada file

               eksternal, hanya saja diberlakukan pada tabel. }

    procedure SaveDataJual (filename : string; T : tabPenjualan);

    { I.S. : T dan filename terdefinisi; T mungkin kosong }

    { F.S. : Isi tabel T dituliskan pada file dg nama = filename }

 

{ IMPLEMENTASI FUNGSI DAN PROSEDUR }

implementation

    function EOP (rek : dataJual) : boolean;

    { Menghasilkan true jika rek = mark }
        begin
            EOP := (rek.KdKategori = '99999999') and (rek.KdProduk = 'XX9999') and (rek.Hasil = -999);
        end;

    procedure LoadDataJual (filename : string; var T : tabPenjualan);

    { I.S. : filename terdefinisi, T sembarang }

    { F.S. : Tabel T terisi data hasil penjualan dengan data yang dibaca

             dari file dg nama = filename

             T.Neff = 0 jika tidak ada file kosong;

             T diisi dengan seluruh isi file atau sampai T penuh. }
        var
            f : file of dataJual;
            dj : dataJual;
        begin
            assign(f, filename);
            reset(f);
            T.Neff := 0;
            if not (eof(f)) then begin
                read(f, dj);
                while (not EOP(dj)) and (not eof(f)) and (T.Neff < NMAX) do begin
                    T.Neff += 1;
                    T.TJual[T.Neff] := dj;
                    read(f, dj);
                end;
            end;
            close(f);
        end;

    procedure UrutKategoriAsc (var T : tabPenjualan);

    { I.S. : T terdefinisi; T mungkin kosong }

    { F.S. : Isi tabel T terurut membesar menurut KdKategori. T tetap jika T kosong. }

    { Proses : Gunakan salah satu algoritma sorting yang diajarkan di kelas.

               Tuliskan nama algoritmanya dalam bentuk komentar. }
        var
            i, j : integer;
            temp : dataJual;
            swap : boolean;
        begin
            { BUBBLE SORT }
            if (T.Neff > 1) then begin
                swap := true;
                i := 1;
                while (i < T.Neff) and (swap) do begin
                    swap := false;
                    for j := T.Neff downto i + 1 do begin
                        if (T.TJual[j].KdKategori < T.TJual[j - 1].KdKategori) then begin
                            temp := T.TJual[j];
                            T.TJual[j] := T.TJual[j - 1];
                            T.TJual[j - 1] := temp;
                            swap := true;
                        end;
                    end;
                    i += 1;
                end;
            end;
        end;

    procedure HitungRataRata (T : tabPenjualan);

    { I.S. : T terdefinisi; T mungkin kosong }

    { F.S. : Menampilkan KdKategori dan hasil penjualan rata-rata per KdKategori

             yang ada dalam tabel dengan format: <KdKategori>=<rata-rata>

             Nilai rata-rata dibulatkan ke integer terdekat. Gunakan fungsi round. }

    { Proses : Menggunakan ide algoritma konsolidasi tanpa separator pada file

               eksternal, hanya saja diberlakukan pada tabel. }
        var
            jml, n, i: integer;
            kd : string;
        begin
            if (T.Neff = 0) then begin
                writeln('Data kosong')
            end else begin
                i := 1;
                UrutKategoriAsc(t);
                while (i <= T.Neff) do begin
                    kd := T.TJual[i].KdKategori;
                    n := 0;
                    jml := 0;
                    while (i <= T.Neff) and (T.TJual[i].KdKategori = kd) do begin
                        n += 1;
                        jml += T.TJual[i].Hasil;
                        i += 1;
                    end;
                    writeln(kd, '=', round(jml / n));
                end;
            end;
        end;

    procedure SaveDataJual (filename : string; T : tabPenjualan);

    { I.S. : T dan filename terdefinisi; T mungkin kosong }

    { F.S. : Isi tabel T dituliskan pada file dg nama = filename }
        var
            rek : dataJual;
            f : file of dataJual;
            i : integer;
        begin
            assign(f, filename);
            rewrite(f);
            for i := 1 to T.Neff do begin
                write(f, T.TJual[i]);
            end;
            rek.KdKategori := '99999999';
            rek.KdProduk := 'XX9999';
            rek.Hasil := -999;
            write(f, rek);
            close(f);
        end;

end.