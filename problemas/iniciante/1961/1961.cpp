#include <iostream>

using namespace std;

int main()
{
    bool resposta;
    int P, N, anterior, atual;

    cin >> P >> N;

    cin >> anterior;
    resposta = true;
    for (int i = 1; i < N; ++i)
    {
        cin >> atual;

        resposta &= (abs(atual - anterior) <= P);
        anterior = atual;
    }

    cout << (resposta ? "YOU WIN" : "GAME OVER") << endl;

    return 0;
}