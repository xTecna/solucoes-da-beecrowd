#include <iomanip>
#include <iostream>

using namespace std;

int main()
{
    int N;
    double P, G;

    cin >> N;

    double menor_preco = 1000.0;
    for (int i = 0; i < N; ++i)
    {
        cin >> P >> G;

        menor_preco = min(menor_preco, P / G);
    }

    cout << setprecision(2) << fixed << menor_preco * 1000 << endl;

    return 0;
}