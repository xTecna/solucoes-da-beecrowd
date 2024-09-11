import 'dart:io';

void main() {
  while (true) {
    int n = int.parse(stdin.readLineSync()!);

    if (n == 2002) {
      print('Acesso Permitido');
      break;
    }

    print('Senha Invalida');
  }
}
