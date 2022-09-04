#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int N;
    double resposta;

    cin >> N;

    if (N == 0)
    {
        resposta = 1.0;
    }
    else
    {
        resposta = 2.0;
        for (int i = 0; i < N - 1; ++i)
        {
            resposta = 2.0 + 1.0 / resposta;
        }
        resposta = 1.0 + 1.0 / resposta;
    }

    cout << setprecision(10) << fixed << resposta << endl;

    return 0;
}