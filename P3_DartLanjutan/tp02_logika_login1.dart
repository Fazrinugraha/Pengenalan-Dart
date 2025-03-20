import 'dart:io';

void main() {
  const String validUsername = 'admin';
  const String validPassword = '1234';
  int attempts = 0;
  const int maxAttempts = 3;

  while (attempts < maxAttempts) {
    // Input username
    stdout.write('Masukkan username: ');
    String? username = stdin.readLineSync()?.trim();
    // Input password
    stdout.write('Masukkan password: ');
    String? password = stdin.readLineSync()?.trim();

    // Check if username or password is empty or contains only spaces
    if (username == null || password == null || username.isEmpty || password.isEmpty) {
      print('Username dan password tidak boleh kosong!');
      continue;
    }

    // Check if credentials are correct
    if (username == validUsername && password == validPassword) {
      print('Login berhasil!');
      break;
    } else {
      attempts++;
      if (attempts < maxAttempts) {
        print('Username atau password salah. Coba lagi.');
      }
    }
  }

  // If user fails after 3 attempts
  if (attempts == maxAttempts) {
    print('Kesempatan habis. Login gagal!');
  }
}
