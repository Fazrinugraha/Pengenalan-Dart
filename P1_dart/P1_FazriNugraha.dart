import 'dart:io';

void main() {
  print('Siapa nama Anda?');
  String? nama = stdin.readLineSync();

  print('Berapa umur Anda?');
  String? umur = stdin.readLineSync();

  print('Kapan tanggal lahir Anda? (DD-MM-YYYY)');
  String? tanggalLahir = stdin.readLineSync();

  print('Di mana Anda bersekolah?');
  String? sekolah = stdin.readLineSync();

  print('\n=== Data Diri Anda ===');
  print('Nama         : $nama');
  print('Umur         : $umur tahun');
  print('Tanggal Lahir: $tanggalLahir');
  print('Asal Sekolah : $sekolah');
}
