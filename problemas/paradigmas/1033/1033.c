#include <stdio.h>

int b;

struct Matriz
{
    int **M;
    int n, m;
};

struct Matriz inicializa(int n, int m)
{
    struct Matriz nova;

    nova.n = n;
    nova.m = m;
    nova.M = (int **)malloc(sizeof(int *) * n);
    for (int i = 0; i < n; ++i)
    {
        nova.M[i] = (int *)malloc(sizeof(int) * m);
    }

    return nova;
}

struct Matriz multiplicacao(struct Matriz m1, struct Matriz m2)
{
    struct Matriz m3 = inicializa(m1.m, m2.n);

    for (int i = 0; i < m1.n; ++i)
    {
        for (int j = 0; j < m2.m; ++j)
        {
            m3.M[i][j] = 0;
            for (int k = 0; k < m1.m; ++k)
            {
                m3.M[i][j] += m1.M[i][k] * m2.M[k][j];
                m3.M[i][j] %= b;
            }
        }
    }

    return m3;
}

struct Matriz potencia(struct Matriz m, long long int expoente)
{
    if (expoente == 1)
    {
        return m;
    }
    else if (expoente % 2)
    {
        return multiplicacao(m, potencia(m, expoente - 1));
    }
    else
    {
        struct Matriz pot = potencia(m, expoente / 2);
        return multiplicacao(pot, pot);
    }
}

int main()
{
    int T;
    long long int n;

    T = 0;
    while (scanf("%lld %d", &n, &b) != EOF)
    {
        if (n == 0 && b == 0)
        {
            break;
        }

        struct Matriz A = inicializa(3, 3);
        A.M[0][0] = 1;
        A.M[0][1] = 1;
        A.M[0][2] = 1;
        A.M[1][0] = 1;
        A.M[1][1] = 0;
        A.M[1][2] = 0;
        A.M[2][0] = 0;
        A.M[2][1] = 0;
        A.M[2][2] = 1;

        struct Matriz B = inicializa(3, 1);
        B.M[0][0] = 1;
        B.M[1][0] = 1;
        B.M[2][0] = 1;

        printf("Case %d: %lld %d ", ++T, n, b);
        if (n < 2)
        {
            printf("1\n");
        }
        else
        {
            struct Matriz An1 = potencia(A, n - 1);
            struct Matriz R = multiplicacao(An1, B);

            printf("%d\n", R.M[0][0]);
        }
    }

    return 0;
}