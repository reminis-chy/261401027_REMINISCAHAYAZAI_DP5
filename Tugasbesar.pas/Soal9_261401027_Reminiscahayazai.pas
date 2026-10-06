program Soal9;
var
  tahun, bulan, jumlahHari: integer;
  kabisat: boolean;
begin
  writeln('=== PROGRAM JUMLAH HARI DALAM BULAN ===');
  write('Masukkan tahun: ');
  readln(tahun);
  write('Masukkan nomor bulan (1-12): ');
  readln(bulan);
  kabisat := ((tahun mod 400 = 0) or
              ((tahun mod 4 = 0) and (tahun mod 100 <> 0)));
  case bulan of
    1, 3, 5, 7, 8, 10, 12:
      jumlahHari := 31;
    4, 6, 9, 11:
      jumlahHari := 30;
    2:
      begin
        if kabisat then
          jumlahHari := 29
        else
          jumlahHari := 28;
      end;
  else
    jumlahHari := 0;
  end;
  if jumlahHari = 0 then
    writeln('Nomor bulan tidak valid.')
  else
  begin
    writeln('Tahun ', tahun, ' adalah tahun kabisat: ', kabisat);
    writeln('Jumlah hari = ', jumlahHari, ' hari');
  end;
end.
