import 'dart:io';

int mdc(int a, int b) {
    if (b == 0) {
        return a;
    }
    return mdc(b, a % b);
}

void main() {
    while (true) {
        String? linha = stdin.readLineSync();
        if (linha == null) {
            break;
        }

        List<String> numeros = linha.split(' ');
        int x = int.parse(numeros[0]);
        int y = int.parse(numeros[1]);

        print((2 * (x + y)) ~/ mdc(x, y));
    }
}