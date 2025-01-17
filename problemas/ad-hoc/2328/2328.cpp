#include <iostream>

using namespace std;

int main()
{
    int N, I, resposta;

    cin >> N;
    resposta = 0;
    for (int i = 0; i < N; ++i)
    {
        cin >> I;
        resposta += I;
    }
    cout << resposta - N << endl;

    return 0;
}