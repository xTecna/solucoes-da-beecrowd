import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; ++i) {
    List<int> valores =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    int x = valores[0];
    int y = valores[1];

    if (y == 0) {
      print('divisao impossivel');
    } else {
      print('${(x / y).toStringAsFixed(1)}');
    }
  }
}
