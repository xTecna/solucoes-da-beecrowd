import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; ++i) {
    int m = 1 + 4 * i;
    print('${m} ${m + 1} ${m + 2} PUM');
  }
}
