import 'dart:io';

void main() {
  int alcool = 0;
  int gasolina = 0;
  int diesel = 0;
  while (true) {
    int codigo = int.parse(stdin.readLineSync()!);

    if (codigo == 4) {
      break;
    } else if (codigo == 1) {
      alcool += 1;
    } else if (codigo == 2) {
      gasolina += 1;
    } else if (codigo == 3) {
      diesel += 1;
    }
  }

  print('MUITO OBRIGADO');
  print('Alcool: ${alcool}');
  print('Gasolina: ${gasolina}');
  print('Diesel: ${diesel}');
}
