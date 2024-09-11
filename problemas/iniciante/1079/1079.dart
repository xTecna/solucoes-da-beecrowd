import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; ++i) {
    List<double> valores =
        stdin.readLineSync()!.split(' ').map((x) => double.parse(x)).toList();
    print(
        '${((2 * valores[0] + 3 * valores[1] + 5 * valores[2]) / 10).toStringAsFixed(1)}');
  }
}
