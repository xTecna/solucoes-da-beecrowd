#include <iostream>

using namespace std;

int somaPA(int a0, int n)
{
    int an = a0 + n - 1;

    return (a0 + an) * n / 2;
}

int main()
{
    int A, N;

    cin >> A;

    while (cin >> N)
    {
        if (N > 0)
        {
            break;
        }
    }

    cout << somaPA(A, N) << endl;

    return 0;
}