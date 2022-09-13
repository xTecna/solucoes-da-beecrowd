#include <algorithm>
#include <iostream>
#include <iomanip>
#include <vector>

using namespace std;

double notaFinal(vector<double> notas, double dificuldade)
{
    sort(notas.begin(), notas.end());

    double soma = 0.0;
    for (int i = 1; i < 6; ++i)
    {
        soma += notas[i];
    }

    return soma * dificuldade;
}

int main()
{
    int N;
    string nome;
    double dificuldade;
    vector<double> notas;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> nome;
        cin >> dificuldade;
        notas.assign(7, 0.0);
        for (int i = 0; i < 7; ++i)
        {
            cin >> notas[i];
        }

        cout << nome << ' ' << setprecision(2) << fixed << notaFinal(notas, dificuldade) << endl;
    }

    return 0;
}