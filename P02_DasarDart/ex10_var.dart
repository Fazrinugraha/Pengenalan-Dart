//variabel var 
void main(List<String> args) { 
  var x; 
  //var x = 1; 
  x = 1; 
  print("Nilai a\t: " + x.toString()); 
  print("Tipe a\t: " + x.runtimeType.toString()); 
  x = 123.456; 
  print("Nilai a\t: " + x.toString()); 
  print("Tipe a\t: " + x.runtimeType.toString()); 
  x = true; 
  print("Nilai a\t: " + x.toString()); 
  print("Tipe a\t: " + x.runtimeType.toString()); 
  x = 'Dart'; 
  print("Nilai a\t: " + x.toString()); 
  print("Tipe a\t: " + x.runtimeType.toString()); 
} 