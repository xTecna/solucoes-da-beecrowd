import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    List<String> numeros = stdin.readLineSync()!.split(' ');
    int h = int.parse(numeros[0]);
    int m = int.parse(numeros[1]);
    int o = int.parse(numeros[2]);

    if (o == 1) {
      print(
          "${h.toString().padLeft(2, '0')}:${m.toString().padLeft(2, '0')} - A porta abriu!")
    } else {
      print(
          "${h.toString().padLeft(2, '0')}:${m.toString().padLeft(2, '0')} - A porta fechou!"
    }
  }
}
