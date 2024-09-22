import 'dart:io';

void main() {
  List<int> entrada =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int p = entrada[0];
  int r = entrada[1];

  if (p == 1) {
    if (r == 1) {
      print("A");
    } else {
      print("B");
    }
  } else {
    print("C");
  }
}
