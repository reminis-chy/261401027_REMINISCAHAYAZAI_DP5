program Soal7;
var
  kode: char;
  jam: integer;
  tarif: longint;
begin
  writeln('=== PROGRAM TARIF PARKIR ===');
  write('Masukkan kode kendaraan (M/K/B): ');
  readln(kode);
  write('Masukkan lama parkir (jam): ');
  readln(jam);
  if jam <= 0 then
    tarif := 0
  else
    case kode of
      'M', 'm':
        begin
          if jam > 10 then
            tarif := 30000
          else
            tarif := 5000 + ((jam - 1) * 3000);
        end;

      'K', 'k':
        begin
          if jam > 10 then
            tarif := 10000
          else
            tarif := 2000 + ((jam - 1) * 1000);
        end;

      'B', 'b':
        begin
          if jam > 10 then
            tarif := 50000
          else
            tarif := 10000 + ((jam - 1) * 5000);
        end;

    else
      tarif := -1;
    end;

  if tarif = -1 then
    writeln('Kode kendaraan tidak valid.')
  else
    writeln('Total tarif parkir = Rp', tarif);
end.
