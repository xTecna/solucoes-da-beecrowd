import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  stdout.write("Ho");
  for (int i = 1; i < n; i++) {
    stdout.write(" Ho");
  }
  print("!");
}
