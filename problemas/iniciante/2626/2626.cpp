#include <iostream>

using namespace std;

bool ganhou(string jogada1, string jogada2)
{
    return (jogada1 == "pedra" && jogada2 == "tesoura") || (jogada1 == "tesoura" && jogada2 == "papel") || (jogada1 == "papel" && jogada2 == "pedra");
}

int main()
{
    string dodo, leo, pepper;

    while (cin >> dodo >> leo >> pepper)
    {
        if (ganhou(dodo, leo) && ganhou(dodo, pepper))
        {
            cout << "Os atributos dos monstros vao ser inteligencia, sabedoria..." << endl;
        }
        else if (ganhou(leo, dodo) && ganhou(leo, pepper))
        {
            cout << "Iron Maiden's gonna get you, no matter how far!" << endl;
        }
        else if (ganhou(pepper, dodo) && ganhou(pepper, leo))
        {
            cout << "Urano perdeu algo muito precioso..." << endl;
        }
        else
        {
            cout << "Putz vei, o Leo ta demorando muito pra jogar..." << endl;
        }
    }

    return 0;
}