#include <iostream>

using namespace std;

int main()
{
    double C;
    int N, resposta;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> C;

        resposta = 0;
        while (C > 1.0)
        {
            ++resposta;
            C /= 2;
        }

        cout << resposta << " dias" << endl;
    }

    return 0;
}
