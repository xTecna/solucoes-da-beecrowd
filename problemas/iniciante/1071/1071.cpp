#include <iostream>
#include <cstdlib>

using namespace std;

int main()
{
    int X, Y, soma;

    cin >> X >> Y;

    if (X > Y)
    {
        swap(X, Y);
    }
    X += (abs(X) % 2) + 1;
    Y -= (abs(Y) % 2) + 1;

    soma = 0;
    for (int i = X; i <= Y; i += 2)
    {
        soma += i;
    }

    cout << soma << endl;

    return 0;
}