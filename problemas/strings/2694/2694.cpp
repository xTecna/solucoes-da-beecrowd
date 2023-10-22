#include <iostream>
#include <sstream>

using namespace std;

int converte(string numero) {
    int resposta;
    stringstream ss;

    ss << numero;
    ss >> resposta;

    return resposta;
}

int main() {
    int N;
    string linha;
    int parcelas[3];

    cin >> N;
    for (int k = 0; k < N; ++k) {
        cin >> linha;

        parcelas[0] = converte(linha.substr(2, 2));
        parcelas[1] = converte(linha.substr(5, 3));
        parcelas[2] = converte(linha.substr(11, 2));

        int resposta = 0;
        for (int i = 0; i < 3; ++i) {
            resposta += parcelas[i];
        }

        cout << resposta << endl;
    }

    return 0;
}