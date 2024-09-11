import 'dart:io';

List<int> f = List.filled(14, -1);

int fatorial(int n) {
  if (f[n] == -1) {
    f[n] = n * fatorial(n - 1);
  }
  return f[n];
}

void main() {
  f[1] = 1;
  int n = int.parse(stdin.readLineSync()!);
  print(fatorial(n));
}
