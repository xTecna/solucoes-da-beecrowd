import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<String> numeros = stdin.readLineSync()!.split(' ');
  int a = int.parse(numeros[0]);
  int b = int.parse(numeros[1]);

  if (a + b <= n) {
    print("Farei hoje!");
  } else {
    print("Deixa para amanha!");
  }
}
