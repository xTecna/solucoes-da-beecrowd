#include <iostream>
#include <cstring>
#include <vector>

using namespace std;

int main()
{
    bool visitado[1000001];
    vector<int> V;
    int N, estrelas;
    unsigned long long int soma;

    cin >> N;
    V.assign(N, 0);
    memset(visitado, false, sizeof(visitado));

    soma = 0;
    for (int i = 0; i < N; ++i)
    {
        cin >> V[i];
        soma += V[i];
    }

    int i = 0;
    estrelas = 0;
    while (i > -1 && i < N)
    {
        if (!visitado[i])
        {
            visitado[i] = true;
            estrelas += 1;
        }

        if (V[i] > 0)
        {
            V[i] -= 1;
            soma -= 1;
        }
        else
        {
            break;
        }

        if (V[i] % 2 == 0)
        {
            i += 1;
        }
        else
        {
            i -= 1;
        }
    }

    cout << estrelas << ' ' << soma << endl;

    return 0;
}