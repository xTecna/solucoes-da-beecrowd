#include <iostream>

using namespace std;

int main()
{
    int N, T, menor, resposta;

    cin >> N;

    cin >> T;

    menor = T;
    resposta = 1;
    for (int i = 1; i < N; ++i)
    {
        cin >> T;

        if (T < menor)
        {
            menor = T;
            resposta = i + 1;
        }
    }

    cout << resposta << endl;

    return 0;
}