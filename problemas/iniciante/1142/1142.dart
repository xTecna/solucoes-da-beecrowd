import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i < 4 * n; i += 4) {
    print('${i} ${i + 1} ${i + 2} PUM');
  }
}
