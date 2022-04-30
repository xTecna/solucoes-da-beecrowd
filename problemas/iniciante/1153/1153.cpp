#include <iostream>
#include <vector>

using namespace std;

vector<int> F;

int Fatorial(int n)
{
    if (F[n] == -1)
    {
        F[n] = Fatorial(n - 1) * n;
    }
    return F[n];
}

int main()
{
    int N;

    F.assign(14, -1);
    F[0] = 1;

    cin >> N;

    cout << Fatorial(N) << endl;

    return 0;
}