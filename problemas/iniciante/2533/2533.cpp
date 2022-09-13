#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int M, N, C, numerador, denominador;

    while (cin >> M)
    {
        numerador = 0;
        denominador = 0;

        for (int i = 0; i < M; ++i)
        {
            cin >> N >> C;

            numerador += N * C;
            denominador += C;
        }

        cout << setprecision(4) << fixed << numerador / (100.0 * denominador) << endl;
    }

    return 0;
}