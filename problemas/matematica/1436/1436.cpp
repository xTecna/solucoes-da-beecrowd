#include <iostream>

using namespace std;

int main()
{
    int T, N, idade, resposta;

    cin >> T;

    for (int k = 0; k < T; ++k)
    {
        cin >> N;

        for (int i = 0; i < N / 2; ++i)
        {
            cin >> idade;
        }
        cin >> resposta;
        for (int i = N / 2 + 1; i < N; ++i)
        {
            cin >> idade;
        }

        cout << "Case " << k + 1 << ": " << resposta << endl;
    }

    return 0;
}
