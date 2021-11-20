#include <algorithm>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

class Camiseta
{
public:
    string nome, cor, tamanho;

    Camiseta()
    {
        nome = "";
        cor = "";
        tamanho = "";
    }

    Camiseta(string n, string c, string t)
    {
        nome = n;
        cor = c;
        tamanho = t;
    }
};

bool comp(Camiseta a, Camiseta b)
{
    if (a.cor == b.cor)
    {
        if (a.tamanho == b.tamanho)
        {
            return a.nome < b.nome;
        }
        return a.tamanho > b.tamanho;
    }
    return a.cor < b.cor;
}

int main()
{
    int N;
    bool first;
    vector<Camiseta> camisetas;

    first = true;
    while (cin >> N)
    {
        if (!N)
            break;
        cin.ignore();

        if (first)
            first = false;
        else
            cout << endl;

        camisetas.assign(N, Camiseta());
        for (int i = 0; i < N; ++i)
        {
            getline(cin, camisetas[i].nome);
            cin >> camisetas[i].cor >> camisetas[i].tamanho;
            cin.ignore();
        }

        sort(camisetas.begin(), camisetas.end(), comp);

        for (int i = 0; i < N; ++i)
        {
            cout << camisetas[i].cor << " " << camisetas[i].tamanho << " " << camisetas[i].nome << endl;
        }
    }

    return 0;
}
