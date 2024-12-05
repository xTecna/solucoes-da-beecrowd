import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  if (n > 85) {
    print("A");
  } else if (n > 60) {
    print("B");
  } else if (n > 35) {
    print("C");
  } else if (n > 0) {
    print("D");
  } else {
    print("E");
  }
}
