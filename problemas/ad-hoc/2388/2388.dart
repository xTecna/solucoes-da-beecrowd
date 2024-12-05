import 'dart:io';

void main() {
    int n = int.parse(stdin.readLineSync()!);

    int resposta = 0;
    for (int i = 0; i < n; ++i) {
        List<int> valores = stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
        resposta += valores[0] * valores[1];
    }

    print(resposta);
}
