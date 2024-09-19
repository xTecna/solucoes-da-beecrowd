import 'dart:io';

List<int> f = List.filled(101, -1);

int feynman(int n) {
  if (f[n] == -1) {
    f[n] = feynman(n - 1) + (n * n);
  }
  return f[n];
}

void main() {
  f[1] = 1;

  while (true) {
    int n = int.parse(stdin.readLineSync()!);
    if (n == 0) {
      break;
    }
    print(feynman(n));
  }
}
