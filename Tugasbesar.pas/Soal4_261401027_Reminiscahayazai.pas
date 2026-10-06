program Soal4;

var
  pilihan: integer;
  a, b, hasil: real;
  hasilDiv: real;
  hasilDivInt, hasilMod: integer;
  ulang: char;

begin
  repeat
    writeln;
    writeln('=== KALKULATOR SEDERHANA ===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilihan);

    write('Masukkan angka pertama: ');
    readln(a);
    write('Masukkan angka kedua: ');
    readln(b);

    case pilihan of
      1:
        begin
          hasil := a + b;
          writeln('Hasil = ', hasil:0:2);
        end;

      2:
        begin
          hasil := a - b;
          writeln('Hasil = ', hasil:0:2);
        end;

      3:
        begin
          hasil := a * b;
          writeln('Hasil = ', hasil:0:2);
        end;

      4:
        begin
          if b <> 0 then
          begin
            hasilDiv := a / b;
            writeln('Hasil = ', hasilDiv:0:2);
          end
          else
            writeln('Error: pembagian dengan nol tidak diperbolehkan.');
        end;

      5:
        begin
          if (frac(a) = 0) and (frac(b) = 0) and (b <> 0) then
          begin
            hasilDivInt := trunc(a) div trunc(b);
            hasilMod := trunc(a) mod trunc(b);
            writeln('Hasil DIV = ', hasilDivInt);
            writeln('Hasil MOD = ', hasilMod);
          end
          else
            writeln('DIV & MOD membutuhkan bilangan bulat dan penyebut tidak boleh nol.');
        end;

    else
      writeln('Pilihan operasi tidak valid.');
    end;

    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);

  until (ulang = 'T') or (ulang = 't');

  writeln('Program selesai.');
end.
