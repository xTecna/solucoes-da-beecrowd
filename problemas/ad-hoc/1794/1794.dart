import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> valores =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int la = valores[0];
  int lb = valores[1];
  valores = stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int sa = valores[0];
  int sb = valores[1];

  if (la <= n && n <= lb && sa <= n && n <= sb) {
    print('possivel');
  } else {
    print('impossivel');
  }
}
