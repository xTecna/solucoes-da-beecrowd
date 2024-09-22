import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  List<int> valores =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();

  int corretos = 0;
  for (int i = 0; i < 5; i++) {
    if (valores[i] == t) {
      corretos += 1;
    }
  }
  print(corretos);
}
