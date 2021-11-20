#include <iostream>

using namespace std;

double duracaoNota(char nota)
{
    switch (nota)
    {
    case 'W':
        return 1.0;
    case 'H':
        return 0.5;
    case 'Q':
        return 0.25;
    case 'E':
        return 0.125;
    case 'S':
        return 0.0625;
    case 'T':
        return 0.03125;
    case 'X':
        return 0.015625;
    }
}

int main()
{
    int resposta;
    double duracao;
    string composicao;

    while (cin >> composicao)
    {
        if (composicao == "*")
            break;

        resposta = 0;
        duracao = 0.0;
        for (int i = 0; i < composicao.length(); ++i)
        {
            if (composicao[i] == '/')
            {
                if (duracao == 1.0)
                    ++resposta;
                duracao = 0.0;
            }
            else
            {
                duracao += duracaoNota(composicao[i]);
            }
        }

        cout << resposta << endl;
    }

    return 0;
}
