import 'dart:io';

void main() {
  String s = stdin.readLineSync()!;

  int soma = 0;
  for (int i = 0; i < s.length; i++) {
    soma += int.parse(s[i]);
  }
  print("${s}${soma % 2}");
}
