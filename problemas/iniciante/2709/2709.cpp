#include <iostream>
#include <cstring>
#include <vector>

using namespace std;

bool C[10001];

void Crivo()
{
    memset(C, true, sizeof(C));
    C[0] = false;
    C[1] = false;

    for (int i = 4; i < 10001; i += 2)
    {
        C[i] = false;
    }

    for (int i = 3; i < 10001; ++i)
    {
        if (C[i])
        {
            for (int j = 3 * i; j < 10001; j += 2 * i)
            {
                C[j] = false;
            }
        }
    }
}

int main()
{
    vector<int> V;
    int M, N, soma;

    Crivo();

    while (cin >> N)
    {
        V.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> V[i];
        }

        cin >> M;

        soma = 0;
        for (int i = N - 1; i > -1; i -= M)
        {
            soma += V[i];
        }

        cout << (string)(C[soma] ? "You’re a coastal aircraft, Robbie, a large silver aircraft." : "Bad boy! I’ll hit you.") << endl;
    }

    return 0;
}