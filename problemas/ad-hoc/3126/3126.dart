import 'dart:io';

void main()
{
    int C = int.parse(stdin.readLineSync()!);
    List<int> numeros =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();

    int resposta = 0;
    for(int i = 0; i < C; ++i)
    {
        resposta += numeros[i];
    }

    print(resposta);
}