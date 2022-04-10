#include <iostream>
#include <cstdlib>

using namespace std;

int numeroImpares(int X, int Y)
{
    return (Y - X) / 2 + 1;
}

int somaPA(int X, int Y)
{
    return (X + Y) * numeroImpares(X, Y) / 2;
}

int main()
{
    int X, Y;

    cin >> X >> Y;

    if (X > Y)
    {
        swap(X, Y);
    }
    X += (abs(X) % 2) + 1;
    Y -= (abs(Y) % 2) + 1;

    cout << somaPA(X, Y) << endl;

    return 0;
}