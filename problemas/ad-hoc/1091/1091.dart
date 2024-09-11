import 'dart:io';

void main() {
  while (true) {
    int k = int.parse(stdin.readLineSync()!);

    if (k == 0) {
      break;
    }

    List<int> entrada =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    int n = entrada[0];
    int m = entrada[1];

    for (int i = 0; i < k; ++i) {
      entrada =
          stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
      int x = entrada[0];
      int y = entrada[1];

      x -= n;
      y -= m;

      if (x > 0 && y > 0) {
        print("NE");
      } else if (x > 0 && y < 0) {
        print("SE");
      } else if (x < 0 && y > 0) {
        print("NO");
      } else if (x < 0 && y < 0) {
        print("SO");
      } else {
        print("divisa");
      }
    }
  }
}
