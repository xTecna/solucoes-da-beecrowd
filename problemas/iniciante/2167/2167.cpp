#include <iostream>

using namespace std;

int main()
{
    int N, anterior, R, resposta;

    resposta = 0;
    cin >> N >> anterior;
    for (int i = 1; i < N; ++i)
    {
        cin >> R;

        if (R < anterior)
        {
            resposta = i + 1;
            break;
        }

        anterior = R;
    }

    cout << resposta << endl;

    return 0;
}