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
      String nama = mhs['nama'] ?? 'Nama tidak tersedia';
      String nim = mhs['nim'] ?? 'NIM tidak tersedia';
      String jurusan = mhs['jurusan'] ?? 'Jurusan tidak tersedia';
      
      print('Nama: $nama, NIM: $nim, Jurusan: $jurusan');
    });

    // Menampilkan data mahasiswa menggunakan for
    print('\nMenampilkan data mahasiswa menggunakan for:');
    for (int i = 0; i < mahasiswa.length; i++) {
      String nama = mahasiswa[i]['nama'] ?? 'Nama tidak tersedia';
      String nim = mahasiswa[i]['nim'] ?? 'NIM tidak tersedia';
      String jurusan = mahasiswa[i]['jurusan'] ?? 'Jurusan tidak tersedia';
      
      print('Nama: $nama, NIM: $nim, Jurusan: $jurusan');
    }
  }
}