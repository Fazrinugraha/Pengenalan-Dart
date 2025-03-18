//nilai default variabel 
// ignore_for_file: unnecessary_type_check, unnecessary_null_comparison

void main(List<String> args) { 
  int? x; 
  // ignore: duplicate_ignore
  // ignore: unnecessary_null_comparison
  print(x == null); 
  print(x); 
  x = 1; 
  print(x == null); 
  print(x is int); 
  print(x); 
} 