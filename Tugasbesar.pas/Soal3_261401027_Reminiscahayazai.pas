program Soal3;

var
  N, pilihan, angka: integer;

begin
  writeln('=== PROGRAM DERET ANGKA ===');
  write('Masukkan nilai N: ');
  readln(N);

  writeln('Pilihan kategori:');
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilih kategori (1/2): ');
  readln(pilihan);
  angka := 1;

  writeln;
  write('Hasil deret: ');

  while angka <= N do
  begin
    if (pilihan = 1) and (angka mod 2 = 0) then
    begin
      angka := angka + 1;
      continue;
    end;

    if (pilihan = 2) and (angka mod 2 <> 0) then
    begin
      angka := angka + 1;
      continue;
    end;

    if angka mod 5 = 0 then
    begin
      angka := angka + 1;
      continue;
    end;

    write(angka, ' ');
    angka := angka + 1;
  end;

  writeln;
end.
