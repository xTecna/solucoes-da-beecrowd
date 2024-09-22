import 'dart:io';

void main() {
  List<int> x =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  List<int> y =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();

  bool compativel = true;
  for (int i = 0; i < 5; ++i) {
    if (x[i] == y[i]) {
      compativel = false;
      break;
    }
  }

  if (compativel) {
    print("Y");
  } else {
    print("N");
  }
}
