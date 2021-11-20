#include <iostream>
#include <vector>

using namespace std;

class Ponto
{
    int x;
    int y;

    int dist(Ponto outro)
    {
        return (this->x - outro.x) * (this->x - outro.x) +
               (this->y - outro.y) * (this->y - outro.y);
    }

public:
    Ponto()
    {
        x = 0;
        y = 0;
    }

    Ponto(int x, int y)
    {
        this->x = x;
        this->y = y;
    }

    void move(char direcao)
    {
        switch (direcao)
        {
        case 'C':
            this->y += 1;
            break;
        case 'B':
            this->y -= 1;
            break;
        case 'E':
            this->x -= 1;
            break;
        case 'D':
            this->x += 1;
            break;
        }
    }

    bool chegou(Ponto outro)
    {
        return dist(outro) == 0;
    }

    bool ultrapassou(Ponto outro, int k)
    {
        return dist(outro) >= k;
    }

    bool acabou(Ponto outro, int k)
    {
        return chegou(outro) || ultrapassou(outro, k);
    }
};

vector<char> instrucoes;

int quandoFarsa(Ponto competicao, int k)
{
    Ponto atual = Ponto(0, 0);
    int i, n = instrucoes.size();

    for (i = 0; i < n; ++i)
    {
        if (atual.acabou(competicao, k))
            break;
        atual.move(instrucoes[i]);
    }

    return atual.chegou(competicao) ? -1 : min(i + 1, n);
}

int main()
{
    Ponto competicao;
    int n, k, x, y, resposta;

    cin >> n >> k >> x >> y;
    k *= k;
    competicao = Ponto(x, y);

    instrucoes.assign(n, 'C');
    for (int i = 0; i < n; ++i)
    {
        cin >> instrucoes[i];
    }

    resposta = quandoFarsa(competicao, k);

    if (resposta == -1)
    {
        cout << "Sucesso" << endl;
    }
    else
    {
        cout << "Trap " << resposta << endl;
    }

    return 0;
}
