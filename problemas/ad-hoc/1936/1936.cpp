#include <iostream>

using namespace std;

int main()
{
    int N, resultado;
    int fatoriais[] = {40320, 5040, 720, 120, 24, 6, 2, 1};

    cin >> N;

    resultado = 0;
    for (int i = 0; i < 8; ++i)
    {
        resultado += N / fatoriais[i];
        N %= fatoriais[i];
    }

    cout << resultado << endl;

    return 0;
}
