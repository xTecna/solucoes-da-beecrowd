import 'dart:io';
import 'dart:math';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; ++i) {
    List<int> entrada =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    int n = entrada[0];
    int m = entrada[1];

    print((((n - 2) / 3).ceil() * ((m - 2) / 3).ceil()).toStringAsFixed(0));
  }
}
