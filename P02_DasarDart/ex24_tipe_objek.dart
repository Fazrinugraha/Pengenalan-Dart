//tipe objek
// ignore_for_file: unnecessary_type_check

void main(List<String> args) {
  Person fazri = Person('Fazri', 25);
  Person nugraha = Person('Nugraha', 22);
  fazri.printPerson();
  print('Fazri adalah objek dari kelas Person ${fazri is Person}');
  nugraha.printPerson();
  print('Nugraha adalah objek dari kelas int ${nugraha is int}');
}

class Person {
  String name = 'Tanpa Nama';
  int age = 0;
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
  void printPerson() {
    print('Nama $name, umur $age tahun.');
  }
}
