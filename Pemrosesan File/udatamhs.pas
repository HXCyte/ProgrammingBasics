{ NIM/Nama : 16518230/Muhammad Naufal Fakhrizal }
{ Topik : Pemrosesan File }
 

unit udatamhs;

{ Lengkapi dengan spesifikasi unit }

 

{ DEKLARASI TYPE FUNGSI DAN PROSEDUR }

interface

    const

                NMAX = 100;
    type

        dataMhs  = record

                NIM: string; { Kode kategori produk }

                KdKul : string; { Kode produk }

                Nilai : integer; 

        end;

        tabNilaiMhs = record

                TMhs : array [1..NMAX] of dataMhs;
                Neff : integer;

        end;

 

    { DEKLARASI FUNGSI DAN PROSEDUR }

    function EOP (rek : dataMhs) : boolean;

    { Menghasilkan true jika rek = mark }

    procedure LoadDataNilai (filename : string; var T : tabNilaiMhs);

    { I.S. : filename terdefinisi, T sembarang }

    { F.S. : Tabel T terisi nilai mahasiswa dengan data yang dibaca

             dari file dg nama = filename

             T.Neff = 0 jika tidak ada file kosong;

             T diisi dengan seluruh isi file atau sampai T penuh. }

    procedure UrutNIMAsc (var T : tabNilaiMhs);

    { I.S. : T terdefinisi; T mungkin kosong }

    { F.S. : Isi tabel T terurut membesar menurut NIM. T tetap jika T kosong. }

    { Proses : Gunakan salah satu algoritma sorting yang diajarkan di kelas.

               Tuliskan nama algoritmanya dalam bentuk komentar. }

    procedure HitungRataRata (T : tabNilaiMhs);

    { I.S. : T terdefinisi; T mungkin kosong }

    { F.S. : Menampilkan nilai rata-rata setiap mahasiswa yang ada dalam tabel dengan format:

             <NIM>=<rata-rata>

             Nilai rata-rata dibulatkan ke integer terdekat. Gunakan fungsi round.

             Jika tabel kosong, tuliskan "Data kosong" }

    { Proses : Menggunakan ide algoritma konsolidasi tanpa separator pada file

               eksternal, hanya saja diberlakukan pada tabel. }

    procedure SaveDataNilai (filename : string; T : tabNilaiMhs);

    { I.S. : T dan filename terdefinisi; T mungkin kosong }

    { F.S. : Isi tabel T dituliskan pada file dg nama = filename }


    


 

{ IMPLEMENTASI FUNGSI DAN PROSEDUR }

implementation

    function EOP (rek : dataMhs) : boolean;

    { Menghasilkan true jika rek = mark }
        begin
            EOP := (rek.NIM = '99999999') and (rek.KdKul = 'XX9999') and (rek.Nilai = -999);
        end;

    procedure LoadDataNilai (filename : string; var T : tabNilaiMhs);

    { I.S. : filename terdefinisi, T sembarang }

    { F.S. : Tabel T terisi nilai mahasiswa dengan data yang dibaca

             dari file dg nama = filename

             T.Neff = 0 jika tidak ada file kosong;

             T diisi dengan seluruh isi file atau sampai T penuh. }
        var
            f : file of dataMhs;
            dm : dataMhs;
        begin
            assign(f, filename);
            reset(f);
            T.Neff := 0;
            if not (eof(f)) then begin
                read(f, dm);
                while (not EOP(dm)) and (not eof(f)) and (T.Neff < NMAX) do begin
                    T.Neff += 1;
                    T.TMhs[T.Neff] := dm;
                    read(f, dm);
                end;
            end;
            close(f);
        end;

    procedure UrutNIMAsc (var T : tabNilaiMhs);

    { I.S. : T terdefinisi; T mungkin kosong }

    { F.S. : Isi tabel T terurut membesar menurut NIM. T tetap jika T kosong. }

    { Proses : Gunakan salah satu algoritma sorting yang diajarkan di kelas.

               Tuliskan nama algoritmanya dalam bentuk komentar. }
        var
            i, j : integer;
            temp : dataMhs;
            swap : boolean;
        begin
            { BUBBLE SORT }
            if (T.Neff > 1) then begin
                swap := true;
                i := 1;
                while (i < T.Neff) and (swap) do begin
                    swap := false;
                    for j := T.Neff downto i + 1 do begin
                        if (T.tMhs[j].NIM < T.tMhs[j - 1].NIM) then begin
                            temp := T.tMhs[j];
                            T.tMhs[j] := T.tMhs[j - 1];
                            T.tMhs[j - 1] := temp;
                            swap := true;
                        end;
                    end;
                    i += 1;
                end;
            end;
        end;

    procedure HitungRataRata (T : tabNilaiMhs);

    { I.S. : T terdefinisi; T mungkin kosong }

    { F.S. : Menampilkan nilai rata-rata setiap mahasiswa yang ada dalam tabel dengan format:

             <NIM>=<rata-rata>

             Nilai rata-rata dibulatkan ke integer terdekat. Gunakan fungsi round.

             Jika tabel kosong, tuliskan "Data kosong" }

    { Proses : Menggunakan ide algoritma konsolidasi tanpa separator pada file

               eksternal, hanya saja diberlakukan pada tabel. }
        var
            jml, n, i: integer;
            nm : string;
        begin
            if (T.Neff = 0) then begin
                writeln('Data kosong');
            end else begin
                i := 1;
                UrutNIMAsc(t);
                while (i <= T.Neff) do begin
                    nm := T.tMhs[i].NIM;
                    n := 0;
                    jml := 0;
                    while (i <= T.Neff) and (T.tMhs[i].NIM = nm) do begin
                        n += 1;
                        jml += T.tMhs[i].Nilai;
                        i += 1;
                    end;
                    writeln(nm, '=', round(jml / n));
                end;
            end;
        end;

    procedure SaveDataNilai (filename : string; T : tabNilaiMhs);

    { I.S. : T dan filename terdefinisi; T mungkin kosong }

    { F.S. : Isi tabel T dituliskan pada file dg nama = filename }
        var
            rek : dataMhs;
            f : file of dataMhs;
            i : integer;
        begin
            assign(f, filename);
            rewrite(f);
            for i := 1 to T.Neff do begin
                write(f, T.tMhs[i]);
            end;
            rek.NIM := '99999999';
            rek.KdKul := 'XX9999';
            rek.Nilai := -999;
            write(f, rek);
            close(f);
        end;

end.