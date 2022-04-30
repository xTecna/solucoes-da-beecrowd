#include <iostream>
#include <cstdlib>

using namespace std;

int numeroImpares(int X, int Y)
{
    return (Y - X) / 2 + 1;
}

int somaPA(int a0, int an)
{
    return (a0 + an) * numeroImpares(a0, an) / 2;
}

int main()
{
    int N, X, Y;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> X >> Y;

        if (X > Y)
        {
            swap(X, Y);
        }

        X += (abs(X) % 2) + 1;
        Y -= (abs(Y) % 2) + 1;

        cout << (X > Y ? 0 : somaPA(X, Y)) << endl;
    }

    return 0;
}