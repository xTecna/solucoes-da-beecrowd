import 'dart:io';

int r(int a, int b) {
  return (9 * a * a) + (b * b);
}

int b(int a, int b) {
  return 2 * (a * a) + (25 * b * b);
}

int c(int a, int b) {
  return -100 * a + (b * b * b);
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; ++i) {
    List<String> entrada = stdin.readLineSync()!.split(' ');
    int x = int.parse(entrada[0]);
    int y = int.parse(entrada[1]);

    int rafael = r(x, y);
    int beto = b(x, y);
    int carlos = c(x, y);

    if (rafael > beto && rafael > carlos) {
      print("Rafael ganhou");
    } else if (beto > rafael && beto > carlos) {
      print("Beto ganhou");
    } else {
      print("Carlos ganhou");
    }
  }
}
