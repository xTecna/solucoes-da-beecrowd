#include <iostream>

using namespace std;

int main()
{
    int X, Y;

    cin >> X >> Y;

    if (X > Y)
    {
        swap(X, Y);
    }

    int soma = 0;
    for (int i = X; i <= Y; ++i)
    {
        if (i % 13 == 0)
        {
            continue;
        }
        soma += i;
    }

    cout << soma << endl;

    return 0;
}