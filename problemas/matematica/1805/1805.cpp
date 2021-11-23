#include <iostream>

using namespace std;

long long int somaPA(int a0, int an, int n)
{
    return ((long long int)(a0 + an) * n) / 2;
}

int main()
{
    int A, B;

    cin >> A >> B;

    cout << somaPA(A, B, B - A + 1) << endl;

    return 0;
}
