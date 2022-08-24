#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double total, precos[5] = {1.5, 2.5, 3.5, 4.5, 5.5};
    int N, codigo, qtd;

    cin >> N;
    total = 0.0;
    for (int i = 0; i < N; ++i)
    {
        cin >> codigo >> qtd;

        total += qtd * precos[codigo - 1001];
    }

    cout << setprecision(2) << fixed << total << endl;

    return 0;
}