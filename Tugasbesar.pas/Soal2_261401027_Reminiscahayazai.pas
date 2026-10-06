program Soal2;

var
  password, passwordRahasia: string;
  percobaan: integer;
  berhasil: boolean;

begin
  passwordRahasia := 'reminislucuy';
  percobaan := 0;
  berhasil := false;

  writeln('=== SISTEM LOGIN ===');

  repeat
    percobaan := percobaan + 1;
    write('Masukkan kata sandi (percobaan ', percobaan, '/3): ');
    readln(password);

    if password = passwordRahasia then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;
    end
    else
      writeln('Kata sandi salah.');

  until percobaan >= 3;

  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
end.
