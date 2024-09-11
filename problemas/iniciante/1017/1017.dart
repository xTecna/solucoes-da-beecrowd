import 'dart:io';

void main()
{
    int tempo = int.parse(stdin.readLineSync()!);
    int velocidade = int.parse(stdin.readLineSync()!);

    print(((tempo * velocidade)/12.0).toStringAsFixed(3));
}