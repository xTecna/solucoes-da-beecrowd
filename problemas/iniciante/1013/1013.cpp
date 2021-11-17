#include <iostream>
#include <cstdlib>

using namespace std;

int maior(int a, int b)
{
    return (a + b + abs(a - b)) / 2;
}

int main()
{
    int a, b, c, resposta;

    cin >> a >> b >> c;

    resposta = maior(a, maior(b, c));

    cout << resposta << " eh o maior" << endl;

    return 0;
}