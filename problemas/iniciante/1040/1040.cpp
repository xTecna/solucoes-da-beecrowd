#include <iostream>
#include <iomanip>
#include <vector>

using namespace std;

int main()
{
    double media;
    vector<double> nota;

    nota.assign(5, 0);
    for (int i = 0; i < 4; ++i)
    {
        cin >> nota[i];
    }

    media = (2 * nota[0] + 3 * nota[1] + 4 * nota[2] + 1 * nota[3]) / 10.0;
    cout << "Media: " << setprecision(1) << fixed << media << endl;

    if (media >= 7.0)
    {
        cout << "Aluno aprovado." << endl;
    }
    else if (media < 5.0)
    {
        cout << "Aluno reprovado." << endl;
    }
    else
    {
        cout << "Aluno em exame." << endl;

        cin >> nota[4];
        cout << "Nota do exame: " << setprecision(1) << fixed << nota[4] << endl;

        media = (media + nota[4]) / 2.0;

        if (media >= 5.0)
            cout << "Aluno aprovado." << endl;
        else
            cout << "Aluno reprovado." << endl;

        cout << "Media final: " << setprecision(1) << fixed << media << endl;
    }

    return 0;
}