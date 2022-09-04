#include <iostream>

using namespace std;

double valorGolpe(int ataque, int defesa, int nivel, int bonus)
{
    return (ataque + defesa) / 2.0 + bonus * (1 - (nivel % 2));
}

int main()
{
    int T, B, Ai, Di, Li;
    double golpeDabriel, golpeGuarte;

    cin >> T;
    for (int i = 0; i < T; ++i)
    {
        cin >> B;

        cin >> Ai >> Di >> Li;
        golpeDabriel = valorGolpe(Ai, Di, Li, B);

        cin >> Ai >> Di >> Li;
        golpeGuarte = valorGolpe(Ai, Di, Li, B);

        if (golpeDabriel > golpeGuarte)
        {
            cout << "Dabriel" << endl;
        }
        else if (golpeGuarte > golpeDabriel)
        {
            cout << "Guarte" << endl;
        }
        else
        {
            cout << "Empate" << endl;
        }
    }

    return 0;
}