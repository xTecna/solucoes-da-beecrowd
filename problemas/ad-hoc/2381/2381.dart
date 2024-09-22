import 'dart:io';

void main() {
  List<int> valores =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int n = valores[0];
  int k = valores[1];

  List<String> alunos = List.empty(growable: true);
  for (int i = 0; i < n; ++i) {
    alunos.add(stdin.readLineSync()!);
  }
  alunos.sort();

  print(alunos[k - 1]);
}
