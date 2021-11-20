#include <iostream>

using namespace std;

int main()
{
    int N, L, C, resposta;

    resposta = 0;
    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> L >> C;

        if (L > C)
        {
            resposta += C;
        }
    }
    cout << resposta << endl;

    return 0;
}