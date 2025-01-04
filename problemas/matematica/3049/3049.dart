import 'dart:io';

void main() {
  int b = int.parse(stdin.readLineSync()!);
  int t = int.parse(stdin.readLineSync()!);

  if (b + t > 160) {
    print(1);
  } else if (b + t < 160) {
    print(2);
  } else {
    print(0);
  }
}
