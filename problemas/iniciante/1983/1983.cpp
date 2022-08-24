#include <iostream>

using namespace std;

int main()
{
    int n, m, aluno;
    double nota, maior;

    cin >> n;

    maior = 0.0;
    for (int i = 0; i < n; ++i)
    {
        cin >> m >> nota;

        if (nota > maior)
        {
            maior = nota;
            aluno = m;
        }
    }

    if (maior < 8.0)
    {
        cout << "Minimum note not reached" << endl;
    }
    else
    {
        cout << aluno << endl;
    }

    return 0;
}