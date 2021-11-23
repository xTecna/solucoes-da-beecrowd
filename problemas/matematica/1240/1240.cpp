#include <iostream>

using namespace std;

int main()
{
    int N, A, B;
    bool encaixa;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> A >> B;

        encaixa = true;
        while (A && B)
        {
            if (A % 10 != B % 10)
            {
                encaixa = false;
                break;
            }

            A /= 10;
            B /= 10;
        }

        if (B)
            encaixa = false;

        cout << (string)(encaixa ? "encaixa" : "nao encaixa") << endl;
    }

    return 0;
}
