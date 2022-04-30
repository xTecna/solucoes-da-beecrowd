#include <iostream>
#include <vector>

using namespace std;

vector<int> F;

int Fibonacci(int n)
{
    if (F[n] == -1)
    {
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
    }
    return F[n];
}

int main()
{
    F.assign(46, -1);
    F[0] = 0;
    F[1] = 1;

    int N;

    cin >> N;
    Fibonacci(N);

    cout << F[0];
    for (int i = 1; i < N; ++i)
    {
        cout << " " << F[i];
    }
    cout << endl;

    return 0;
}