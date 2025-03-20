void main() {
  List<Map<String, dynamic>> mahasiswa = [
    {'nama': 'Andi', 'nim': '2021001', 'jurusan': 'Informatika'},
    {'nama': 'Budi', 'nim': '2021002', 'jurusan': null},
    {'nama': null, 'nim': '2021003', 'jurusan': 'Teknik Komputer'},
  ];

  // Memeriksa apakah data mahasiswa kosong
  if (mahasiswa.isEmpty) {
    print('Data mahasiswa kosong.');
  } else {
    // Menampilkan data mahasiswa menggunakan forEach
    print('Menampilkan data mahasiswa menggunakan forEach:');
    mahasiswa.forEach((mhs) {
      // Validasi jika ada value yang bernilai null
      if (mhs['nama'] == null || mhs['nim'] == null || mhs['jurusan'] == null) {
        print('Data mahasiswa tidak lengkap: $mhs');
      } else {
        print('Data Mahasiswa Lengkap : Nama: ${mhs['nama']}, NIM: ${mhs['nim']}, Jurusan: ${mhs['jurusan']}');
      }
    });

    // Menampilkan data mahasiswa menggunakan for
    print('\nMenampilkan data mahasiswa menggunakan for:');
    for (var i = 0; i < mahasiswa.length; i++) {
      // Validasi jika ada value yang bernilai null
      if (mahasiswa[i]['nama'] == null || mahasiswa[i]['nim'] == null || mahasiswa[i]['jurusan'] == null) {
        print('Data mahasiswa tidak lengkap: ${mahasiswa[i]}');
      } else {
        print('Data Mahasiswa Lengkap : Nama: ${mahasiswa[i]['nama']}, NIM: ${mahasiswa[i]['nim']}, Jurusan: ${mahasiswa[i]['jurusan']}');
      }
    }
  }
}