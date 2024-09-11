import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  n -= (n % 2);

  for (int i = 2; i <= n; i += 2) {
    print('$i^2 = ${i * i}');
  }
}
