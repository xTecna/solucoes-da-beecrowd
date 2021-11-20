#include <iostream>
#include <vector>

using namespace std;

vector<long long int> F;

long long int Fatorial(int n)
{
    if (F[n] == 0)
        F[n] = n * Fatorial(n - 1);
    return F[n];
}

int main()
{
    int M, N;

    F.assign(21, 0);
    F[0] = 1;

    while (cin >> M >> N)
    {
        cout << Fatorial(M) + Fatorial(N) << endl;
    }

    return 0;
}
