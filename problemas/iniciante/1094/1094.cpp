#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int N, Quantia, coelhos, ratos, sapos, total;
    char Tipo;

    cin >> N;

    coelhos = 0, ratos = 0, sapos = 0;
    for (int i = 0; i < N; ++i)
    {
        cin >> Quantia >> Tipo;

        switch (Tipo)
        {
        case 'C':
            coelhos += Quantia;
            break;
        case 'R':
            ratos += Quantia;
            break;
        case 'S':
            sapos += Quantia;
            break;
        }
    }
    total = coelhos + ratos + sapos;

    cout << "Total: " << total << " cobaias" << endl;
    cout << "Total de coelhos: " << coelhos << endl;
    cout << "Total de ratos: " << ratos << endl;
    cout << "Total de sapos: " << sapos << endl;
    cout << "Percentual de coelhos: " << setprecision(2) << fixed << (double)coelhos / total * 100 << " %" << endl;
    cout << "Percentual de ratos: " << setprecision(2) << fixed << (double)ratos / total * 100 << " %" << endl;
    cout << "Percentual de sapos: " << setprecision(2) << fixed << (double)sapos / total * 100 << " %" << endl;

    return 0;
}