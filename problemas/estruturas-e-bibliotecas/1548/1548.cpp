#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int N, M, P, resposta;
    vector<int> original, ordenado;

    cin >> N;

    for (int k = 0; k < N; ++k)
    {
        cin >> M;

        original.assign(M, 0);
        for (int i = 0; i < M; ++i)
        {
            cin >> original[i];
        }

        ordenado = original;
        sort(ordenado.begin(), ordenado.end(), greater<int>());

        resposta = 0;
        for (int i = 0; i < M; ++i)
        {
            if (original[i] == ordenado[i])
                ++resposta;
        }

        cout << resposta << endl;
    }

    return 0;
}
