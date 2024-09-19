import 'dart:io';

void main() {
  while (true) {
    List<int> valores =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    int l = valores[0];
    int r = valores[1];

    if (l == 0 && r == 0) {
      break;
    }

    print(l + r);
  }
}
