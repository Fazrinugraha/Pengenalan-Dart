import 'dart:io';
import 'package:intl/intl.dart';

void main() {
  print('Siapa nama Anda? ');
  String nama = stdin.readLineSync() ?? "";

  print('Berapa umur Anda? ');
  int umur = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  print('Kapan tanggal lahir Anda? (DD-MM-YYYY) ');
  DateTime? tanggalLahir;
  try {
    tanggalLahir = DateFormat('dd-MM-yyyy').parseStrict(stdin.readLineSync() ?? "");
  } catch (e) {
    print('Format tanggal tidak valid! Gunakan format DD-MM-YYYY.');
    return;
  }

  print('Di mana Anda bersekolah? ');
  String sekolah = stdin.readLineSync() ?? "";

  print('\n=== Data Diri Anda ===');
  print('Nama         : $nama');
  print('Umur         : $umur tahun');
  print('Tanggal Lahir: ${DateFormat('dd MMMM yyyy').format(tanggalLahir)}');
  print('Asal Sekolah : $sekolah');
}
