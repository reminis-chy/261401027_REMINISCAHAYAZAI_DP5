program Soal5;

var
  M, N, i, j: integer;
  nilai, total, rata: real;
  lulus, tidakLulus: integer;

begin
  writeln('=== REKAPITULASI NILAI MAHASISWA ===');
  write('Masukkan jumlah mahasiswa (M): ');
  readln(M);
  write('Masukkan jumlah tugas (N): ');
  readln(N);
  lulus := 0;
  tidakLulus := 0;

  for i := 1 to M do
  begin
    total := 0;
    writeln;
    writeln('Mahasiswa ke-', i);

    for j := 1 to N do
    begin
      write('Masukkan nilai tugas ke-', j, ': ');
      readln(nilai);
      total := total + nilai;
    end;
    if N > 0 then
      rata := total / N
    else
      rata := 0;
    if rata >= 65 then
    begin
      writeln('Rata-rata : ', rata:0:2);
      writeln('Status    : LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('Rata-rata : ', rata:0:2);
      writeln('Status    : TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
  end;

  writeln;
  writeln('=== HASIL REKAPITULASI ===');
  writeln('Total mahasiswa LULUS       : ', lulus);
  writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);
end.
