# 2715 - Dividindo os Trabalhos I

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2715)

## Solução

Vide [pesquisa binária](../../../base-teorica/estruturas-e-bibliotecas/pesquisa-binaria/README.md) para entender como funciona a pesquisa binária de solução. Com essa abordagem, você consegue dividir um grupo de números em dois grupos contíguos distintos com a menor diferença possível entre eles.

### C++17

```cpp
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
```