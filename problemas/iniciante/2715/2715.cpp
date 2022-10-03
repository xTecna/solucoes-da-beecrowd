#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int N;
    vector<long long int> somas;

    while (cin >> N)
    {
        somas.assign(N, 0);
        cin >> somas[0];
        for (int i = 1; i < N; ++i)
        {
            cin >> somas[i];
            somas[i] += somas[i - 1];
        }

        int inicio = 0, fim = N;
        long long int resposta = somas[N - 1];
        while (inicio < fim)
        {
            int meio = (inicio + fim) / 2;

            long long int rangel = somas[meio];
            long long int gugu = somas[N - 1] - rangel;
            resposta = min(resposta, abs(rangel - gugu));

            if (rangel == gugu)
            {
                break;
            }
            else if (rangel < gugu)
            {
                inicio = meio + 1;
            }
            else
            {
                fim = meio;
            }
        }

        cout << resposta << endl;
    }

    return 0;
}