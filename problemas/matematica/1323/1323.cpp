#include <iostream>
#include <cstring>

using namespace std;

int F[101];

int Feynman(int n)
{
    if (F[n] == 0)
        F[n] = Feynman(n - 1) + n * n;

    return F[n];
}

int main()
{
    int N;

    memset(F, 0, sizeof(F));
    F[1] = 1;

    while (cin >> N)
    {
        if (!N)
            break;

        cout << Feynman(N) << endl;
    }

    return 0;
}
