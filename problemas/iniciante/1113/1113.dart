import 'dart:io';

void main() {
  while (true) {
    List<int> valores =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();

    if (valores[0] == valores[1]) {
      break;
    }

    if (valores[0] < valores[1]) {
      print('Crescente');
    } else {
      print('Decrescente');
    }
  }
}
