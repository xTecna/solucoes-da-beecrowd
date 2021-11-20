#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int n, resposta;

    while (cin >> n)
    {
        if (!n)
            break;

        resposta = n;
        while (n > 1)
        {
            if (n % 2)
                n = 3 * n + 1;
            else
                n /= 2;
            resposta = max(resposta, n);
        }

        cout << resposta << endl;
    }

    return 0;
}
