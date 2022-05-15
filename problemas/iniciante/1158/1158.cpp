#include <iostream>
#include <cstdlib>

using namespace std;

int somaPA(int a0, int n)
{
    a0 += 1 - (abs(a0) % 2);
    int an = a0 + (n - 1) * 2;

    return ((long long int)(a0 + an) * n) / 2;
}

int main()
{
    int N, X, Y;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> X >> Y;

        cout << somaPA(X, Y) << endl;
    }

    return 0;
}