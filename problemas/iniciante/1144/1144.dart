import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; ++i) {
    print('${i} ${i * i} ${i * i * i}');
    print('${i} ${i * i + 1} ${i * i * i + 1}');
  }
}
