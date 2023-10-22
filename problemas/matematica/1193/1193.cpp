#include <cctype>
#include <iostream>

using namespace std;

int valor(char simbolo) {
    if (isalpha(simbolo)) {
        return simbolo - 'a' + 10;
    } else {
        return simbolo - '0';
    }
}

char simbolo(int valor) {
    if (valor > 9) {
        return valor - 10 + 'a';
    } else {
        return valor + '0';
    }
}

int converteParaDecimal(string numero, int base) {
    int potencia = 1, resposta = 0;

    for (int i = numero.length() - 1; i > -1; --i) {
        resposta += valor(numero[i]) * potencia;
        potencia *= base;
    }

    return resposta;
}

string converteDeDecimal(int decimal, int base) {
    string numero = "";

    while (decimal > 0) {
        numero = simbolo(decimal % base) + numero;
        decimal /= base;
    }

    return numero;
}

int main() {
    int N;
    string numero, base;

    cin >> N;
    for (int i = 0; i < N; ++i) {
        cin >> numero >> base;

        cout << "Case " << i + 1 << ":" << endl;

        if (base == "bin") {
            int dec = converteParaDecimal(numero, 2);
            cout << dec << " dec" << endl;
            cout << converteDeDecimal(dec, 16) << " hex" << endl;
        } else if (base == "dec") {
            int dec = converteParaDecimal(numero, 10);
            cout << converteDeDecimal(dec, 16) << " hex" << endl;
            cout << converteDeDecimal(dec, 2) << " bin" << endl;
        } else if (base == "hex") {
            int dec = converteParaDecimal(numero, 16);
            cout << dec << " dec" << endl;
            cout << converteDeDecimal(dec, 2) << " bin" << endl;
        }

        cout << endl;
    }

    return 0;
}