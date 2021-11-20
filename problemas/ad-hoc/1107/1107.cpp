#include <iostream>

using namespace std;

int main()
{
    int A, C, anterior, atual, resposta;

    while (cin >> A >> C)
    {
        if (!A && !C)
            break;

        resposta = 0;
        cin >> anterior;
        for (int i = 1; i < C; ++i)
        {
            cin >> atual;

            if (atual > anterior)
            {
                resposta += atual - anterior;
            }
            anterior = atual;
        }
        resposta += A - anterior;

        cout << resposta << endl;
    }

    return 0;
}
