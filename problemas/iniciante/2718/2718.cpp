#include <iostream>

using namespace std;

int main()
{
    int N;
    long long int X;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        int resposta = 0, contador = 0;
        while (X > 0)
        {
            if (X % 2 == 1)
            {
                ++contador;
            }
            else
            {
                resposta = max(resposta, contador);
                contador = 0;
            }
            X /= 2;
        }
        resposta = max(resposta, contador);

        cout << resposta << endl;
    }

    return 0;
}