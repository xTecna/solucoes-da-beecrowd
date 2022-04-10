#include <iostream>
#include <climits>

using namespace std;

int main()
{
    int numero, maior, posicao;

    maior = INT_MIN;
    posicao = 1;
    for (int i = 0; i < 100; ++i)
    {
        scanf("%d", &numero);

        if (numero > maior)
        {
            maior = numero;
            posicao = i + 1;
        }
    }

    printf("%d\n%d\n", maior, posicao);

    return 0;
}