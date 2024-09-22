import 'dart:io';

bool segura(List<List<int>> m, int i, int j) {
  return m[i][j] + m[i + 1][j] + m[i][j + 1] + m[i + 1][j + 1] >= 2;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> M = List.generate(n + 1, (_) => List.filled(n + 1, 0));
  for (int i = 0; i < n + 1; ++i) {
    List<String> numeros = stdin.readLineSync()!.split(' ');
    for (int j = 0; j < n + 1; ++j) {
      M[i][j] = int.parse(numeros[j]);
    }
  }

  for (int i = 0; i < n; ++i) {
    for (int j = 0; j < n; ++j) {
      if (segura(M, i, j)) {
        stdout.write('S');
      } else {
        stdout.write('U');
      }
    }
    print('');
  }
}
