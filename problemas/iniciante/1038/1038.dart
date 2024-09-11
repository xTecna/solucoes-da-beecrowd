import 'dart:io';

void main()
{
    List<double> precos = [4.00, 4.50, 5.00, 2.00, 1.50];
    List<String> entrada = stdin.readLineSync()!.split(' ');
    int codigo = int.parse(entrada[0]);
    int quantidade = int.parse(entrada[1]);

    print('Total: R\$ ${(quantidade * precos[codigo - 1]).toStringAsFixed(2)}');
}