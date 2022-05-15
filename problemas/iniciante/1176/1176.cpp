#include <iostream>
#include <vector>

using namespace std;

vector<long long int> F;

long long int Fibonacci(int n)
{
    if (F[n] == -1)
    {
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
    }
    return F[n];
}

int main()
{
    int T, N;

    F.assign(61, -1);
    F[0] = 0;
    F[1] = 1;

    cin >> T;
    for (int i = 0; i < T; ++i)
    {
        cin >> N;

        cout << "Fib(" << N << ") = " << Fibonacci(N) << endl;
    }

    return 0;
}