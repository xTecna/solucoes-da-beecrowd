#include <iostream>
#include <map>

using namespace std;

map<string, map<string, string>> regras;

void inicializa()
{
    regras["pedra"]["pedra"] = "Sem ganhador";
    regras["pedra"]["papel"] = "Jogador 1 venceu";
    regras["pedra"]["ataque"] = "Jogador 2 venceu";
    regras["papel"]["pedra"] = "Jogador 2 venceu";
    regras["papel"]["papel"] = "Ambos venceram";
    regras["papel"]["ataque"] = "Jogador 2 venceu";
    regras["ataque"]["pedra"] = "Jogador 1 venceu";
    regras["ataque"]["papel"] = "Jogador 1 venceu";
    regras["ataque"]["ataque"] = "Aniquilacao mutua";
}

int main()
{
    int N;
    string jogada1, jogada2;

    inicializa();

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> jogada1 >> jogada2;
        cout << regras[jogada1][jogada2] << endl;
    }

    return 0;
}