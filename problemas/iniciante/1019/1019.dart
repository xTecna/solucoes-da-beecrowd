import 'dart:io';

void main()
{
    int segundos = int.parse(stdin.readLineSync()!);

    int horas = segundos~/3600;
    segundos %= 3600;
    int minutos = segundos~/60;
    segundos %= 60;

    print("$horas:$minutos:$segundos");
}