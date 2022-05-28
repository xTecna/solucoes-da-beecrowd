#include <iostream>
#include <vector>
#define PRIMO_LIMITE 32612
#define LIMITE 3502

using namespace std;

vector<bool> C;
vector<int> primos;
int F[LIMITE][LIMITE];

void Crivo()
{
    C.assign(PRIMO_LIMITE, true);
    C[1] = false;
    primos.push_back(2);

    for (int i = 4; i < PRIMO_LIMITE; i += 2)
    {
        C[i] = false;
    }

    for (int i = 3; i < PRIMO_LIMITE; i += 2)
    {
        if (C[i])
        {
            primos.push_back(i);
            for (int j = i * 3; j < PRIMO_LIMITE; j += 2 * i)
            {
                C[j] = false;
            }
        }
    }
}

int josephus(int n, int k)
{
    if (F[n][k] == -1)
    {
        F[n][k] = (josephus(n - 1, k + 1) + primos[k] - 1) % n + 1;
    }
    return F[n][k];
}

int main()
{
    int n;

    Crivo();

    for (int i = 0; i < LIMITE; ++i)
    {
        for (int j = 0; j < LIMITE; ++j)
        {
            F[i][j] = -1;
        }
    }

    for (int i = 0; i < LIMITE; ++i)
    {
        F[1][i] = 1;
    }

    while (cin >> n)
    {
        if (n == 0)
        {
            break;
        }

        cout << josephus(n, 0) << endl;
    }

    return 0;
}