#include <stdio.h>

int main()
{
    int mesas[1000];
    int N, Q, E, A, B;

    scanf("%d\n", &N);
    for (int i = 1; i <= N; ++i)
    {
        mesas[i] = i;
    }

    scanf("%d\n", &Q);
    for (int i = 0; i < Q; ++i)
    {
        scanf("%d ", &E);

        if (E == 1)
        {
            scanf("%d %d\n", &A, &B);
            int temp = mesas[A];
            mesas[A] = mesas[B];
            mesas[B] = temp;
        }
        else if (E == 2)
        {
            scanf("%d\n", &A);

            int redirecionamentos = 0;
            int funcionario_atual = mesas[A];
            while (funcionario_atual != A)
            {
                ++redirecionamentos;
                funcionario_atual = mesas[funcionario_atual];
            }

            printf("%d\n", redirecionamentos);
        }
    }

    return 0;
}