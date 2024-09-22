import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    List<int> valores =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    print(valores[0] + valores[1]);
  }
}
