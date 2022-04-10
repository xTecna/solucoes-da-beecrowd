#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double numero, media;
    int qtd;

    media = 0;
    qtd = 0;

    for (int i = 0; i < 6; ++i)
    {
        cin >> numero;

        if (numero > 0)
        {
            qtd += 1;
            media += numero;
        }
    }

    if (qtd > 0)
    {
        media /= qtd;
    }

    cout << qtd << " valores positivos" << endl;
    cout << setprecision(1) << fixed << media << endl;

    return 0;
}