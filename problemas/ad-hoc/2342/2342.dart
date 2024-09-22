import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  List<String> valores = stdin.readLineSync()!.split(' ').toList();
  int p = int.parse(valores[0]);
  String c = valores[1];
  int q = int.parse(valores[2]);

  if (c == "+") {
    if (p + q <= n) {
      print("OK");
    } else {
      print("OVERFLOW");
    }
  } else {
    if (p * q <= n) {
      print("OK");
    } else {
      print("OVERFLOW");
    }
  }
}
