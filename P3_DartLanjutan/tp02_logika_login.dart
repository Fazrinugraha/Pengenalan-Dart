import 'dart:io';

void main() {
  const String username = 'admin';
  const String password = '1234';
  int attempts = 0;
  const int maxAttempts = 3;

  while (attempts < maxAttempts) {
    stdout.write('Masukkan username: ');
    String? inputUsername = stdin.readLineSync()?.trim();
    
    stdout.write('Masukkan password: ');
    String? inputPassword = stdin.readLineSync()?.trim();

    // Validasi input tidak boleh kosong
    if (inputUsername == null || inputUsername.isEmpty || 
        inputPassword == null || inputPassword.isEmpty) {
      print('Username dan password tidak boleh kosong. Silakan coba lagi.');
      continue; // Kembali ke awal loop untuk mencoba lagi
    }

    // Memeriksa kecocokan username dan password
    if (inputUsername == username && inputPassword == password) {
      print('Login berhasil!');
      return; // Keluar dari program setelah login berhasil
    } else {
      attempts++;
      print('Login gagal. Percobaan ke-$attempts dari $maxAttempts.');

      // Menawarkan pilihan untuk keluar dari program
      if (attempts < maxAttempts) {
        stdout.write('Apakah Anda ingin keluar? (ya/tidak): ');
        String? choice = stdin.readLineSync()?.trim().toLowerCase();
        if (choice == 'ya') {
          print('Keluar dari program.');
          return; // Keluar dari program
        }
      }
    }
  }

  print('Kesempatan habis. Login gagal!');
}