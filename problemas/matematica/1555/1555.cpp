#include <iostream>

using namespace std;

int r(int x, int y)
{
    return (3 * x) * (3 * x) + y * y;
}

int b(int x, int y)
{
    return 2 * x * x + (5 * y) * (5 * y);
}

int c(int x, int y)
{
    return -100 * x + y * y * y;
}

int main()
{
    int N, x, y, rafael, beto, carlos;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> x >> y;

        rafael = r(x, y);
        beto = b(x, y);
        carlos = c(x, y);

        if (rafael > beto && rafael > carlos)
            cout << "Rafael ganhou" << endl;
        else if (beto > carlos)
            cout << "Beto ganhou" << endl;
        else
            cout << "Carlos ganhou" << endl;
    }

    return 0;
}
