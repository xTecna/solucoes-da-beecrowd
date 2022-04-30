#include <iostream>

using namespace std;

int main()
{
    int N, numero, menor, posicao;

    cin >> N;

    cin >> menor;
    posicao = 0;

    for (int i = 1; i < N; ++i)
    {
        cin >> numero;

        if (numero < menor)
        {
            menor = numero;
            posicao = i;
        }
    }

    cout << "Menor valor: " << menor << endl;
    cout << "Posicao: " << posicao << endl;

    return 0;
}