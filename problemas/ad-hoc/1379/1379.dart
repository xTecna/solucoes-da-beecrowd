import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    List<int> entrada = stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    int a = entrada[0];
    int b = entrada[1];

    if (a == 0 && b == 0) {
      break;
    }

    print(2 * a - b);
  }
}
