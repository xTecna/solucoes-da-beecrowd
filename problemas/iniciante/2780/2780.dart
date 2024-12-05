import 'dart:io';

void main() {
  int d = int.parse(stdin.readLineSync()!);

  if (d <= 800) {
    print(1);
  } else if (d <= 1400) {
    print(2);
  } else {
    print(3);
  }
}
