import 'dart:io';

void main() {
  List<String> nomes = ["Rolien", "Naej", "Elehcim", "Odranoel"];

  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; ++i) {
    int k = int.parse(stdin.readLineSync()!);
    for (int j = 0; j < k; ++j) {
      int feedback = int.parse(stdin.readLineSync()!);
      print(nomes[feedback - 1]);
    }
  }
}
