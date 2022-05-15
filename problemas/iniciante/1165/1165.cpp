#include <iostream>
#define NMAX 10000001

using namespace std;

bool C[NMAX];

void Crivo()
{
    C[0] = false;
    C[1] = false;
    C[2] = true;
    for (int i = 4; i < NMAX; i += 2)
    {
        C[i] = false;
    }
    for (int i = 3; i < NMAX; i += 2)
    {
        C[i] = true;
    }

    for (int i = 3; i < NMAX; i += 2)
    {
        if (C[i])
        {
            for (int j = 3 * i; j < NMAX; j += 2 * i)
            {
                C[j] = false;
            }
        }
    }
}

int main()
{
    int N, X;

    Crivo();

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        if (C[X])
        {
            cout << X << " eh primo" << endl;
        }
        else
        {
            cout << X << " nao eh primo" << endl;
        }
    }

    return 0;
}