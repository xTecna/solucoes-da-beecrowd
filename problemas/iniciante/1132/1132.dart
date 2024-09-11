import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);

  int a = x < y ? x : y;
  int b = x > y ? x : y;

  int soma = 0;
  for (int i = a; i <= b; ++i) {
    if (i % 13 != 0) {
      soma += i;
    }
  }

  print(soma);
}
