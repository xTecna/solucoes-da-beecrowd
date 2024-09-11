#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int N, pesos[3] = {2, 3, 5};
    double media, notas[3];

    cin >> N;
    for (int k = 0; k < N; ++k)
    {
        media = 0.0;

        for (int i = 0; i < 3; ++i)
        {
            cin >> notas[i];
            media += pesos[i] * notas[i];
        }

        cout << setprecision(1) << fixed << media / 10 << endl;
    }

    return 0;
}