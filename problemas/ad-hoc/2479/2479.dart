import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  int levadas = 0;
  int comportadas = 0;
  List<String> criancas = List.empty(growable: true);
  for (int i = 0; i < n; ++i) {
    List<String> palavras = stdin.readLineSync()!.split(' ');

    if (palavras[0] == "+") {
      comportadas += 1;
    } else {
      levadas += 1;
    }

    criancas.add(palavras[1]);
  }
  criancas.sort();

  for (int i = 0; i < n; ++i) {
    print(criancas[i]);
  }
  print("Se comportaram: ${comportadas} | Nao se comportaram: ${levadas}");
}
