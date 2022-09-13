#include <iostream>

using namespace std;

int main()
{
    int N, voto, votos;

    while (cin >> N)
    {
        votos = 0;

        for (int i = 0; i < N; ++i)
        {
            cin >> voto;
            votos += voto;
        }

        cout << (votos >= 2.0 * N / 3.0 ? "impeachment" : "acusacao arquivada") << endl;
    }

    return 0;
}