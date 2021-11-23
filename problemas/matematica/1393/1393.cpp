#include <iostream>

using namespace std;

int F[41];

int Fibonacci(int n)
{
    if (F[n] == -1)
        F[n] = Fibonacci(n - 1) + Fibonacci(n - 2);
    return F[n];
}

int main()
{
    int n;

    F[0] = 1;
    F[1] = 1;
    for (int i = 2; i <= 40; ++i)
    {
        F[i] = -1;
    }

    while (cin >> n)
    {
        if (!n)
            break;

        cout << Fibonacci(n) << endl;
    }

    return 0;
}
