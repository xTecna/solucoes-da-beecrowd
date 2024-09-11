import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync()!);
  x += (1 - (x % 2));

  for (int i = 0; i < 6; ++i) {
    print(x + (2 * i));
  }
}
