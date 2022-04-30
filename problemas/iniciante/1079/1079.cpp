#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double nota;
    int N, pesos[3] = {2, 3, 5};

    cin >> N;
    for (int k = 0; k < N; ++k)
    {
        double media = 0.0;

        for (int i = 0; i < 3; ++i)
        {
            cin >> nota;
            media += pesos[i] * nota;
        }

        cout << setprecision(1) << fixed << media / 10 << endl;
    }

    return 0;
}