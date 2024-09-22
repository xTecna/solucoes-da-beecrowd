import 'dart:io';

void main() {
  while (true) {
    String? entrada = stdin.readLineSync();
    if (entrada == null) {
      break;
    }

    List<String> biblioteca = List.empty(growable: true);
    int n = int.parse(entrada);
    for (int i = 0; i < n; ++i) {
      biblioteca.add(stdin.readLineSync()!);
    }

    biblioteca.sort();

    for (int i = 0; i < n; ++i) {
      print(biblioteca[i]);
    }
  }
}
