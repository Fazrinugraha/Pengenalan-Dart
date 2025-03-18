import 'dart:io';

void main() {
  stdout.write('Siapa nama Anda? ');
  String? nama = stdin.readLineSync();

  stdout.write('Berapa umur Anda? ');
  String? umur = stdin.readLineSync();

  stdout.write('Kapan tanggal lahir Anda? (DD-MM-YYYY) ');
  String? tanggalLahir = stdin.readLineSync();

  stdout.write('Di mana Anda bersekolah? ');
  String? sekolah = stdin.readLineSync();

  print('\n=== Data DiriAnda ===');
  print('Nama         : $nama');
  print('Umur         : $umur tahun');
  print('Tanggal Lahir: $tanggalLahir');
  print('Asal Sekolah : $sekolah');
}
