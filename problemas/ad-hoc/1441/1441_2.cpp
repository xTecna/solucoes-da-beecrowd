#include <iostream>
#include <cmath>
#include <map>

using namespace std;

map<int, int> respostas;

int H(int n)
{
    if (!respostas.count(n))
    {
        if (n % 2)
            respostas[n] = max(n, H(3 * n + 1));
        else
            respostas[n] = max(n, H(n / 2));
    }

    return respostas[n];
}

int main()
{
    int n;

    respostas[0] = 1;
    respostas[1] = 1;

    while (cin >> n)
    {
        if (!n)
            break;

        cout << H(n) << endl;
    }

    return 0;
}
