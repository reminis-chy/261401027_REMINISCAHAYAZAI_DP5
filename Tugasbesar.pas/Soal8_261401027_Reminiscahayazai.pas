program Soal8;
var
  golongan: char;
  jamKerja: real;
  gajiPokok, lembur, bonus, totalGaji: real;
  jamLembur: real;
begin
  writeln('=== PROGRAM GAJI KARYAWAN ===');
  write('Masukkan golongan (A/B/C): ');
  readln(golongan);
  write('Masukkan total jam kerja per minggu: ');
  readln(jamKerja);
  case golongan of
    'A', 'a':
      gajiPokok := 1500000;
    'B', 'b':
      gajiPokok := 2000000;
    'C', 'c':
      gajiPokok := 2500000;
  else
    gajiPokok := -1;
  end;
  if gajiPokok = -1 then
    writeln('Golongan tidak valid.')
  else
  begin
    if jamKerja > 40 then
    begin
      jamLembur := jamKerja - 40;
      lembur := jamLembur * 20000;
    end
    else
      lembur := 0;
    bonus := 0;
    if ((golongan = 'C') or (golongan = 'c')) and (jamKerja > 50) then
      bonus := 100000;
    totalGaji := gajiPokok + lembur + bonus;
    writeln;
    writeln('Gaji Pokok : Rp', gajiPokok:0:2);
    writeln('Lembur     : Rp', lembur:0:2);
    writeln('Bonus      : Rp', bonus:0:2);
    writeln('Total Gaji : Rp', totalGaji:0:2);
  end;
end.
