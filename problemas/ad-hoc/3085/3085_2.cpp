#include <iostream>

using namespace std;

int main()
{
    char instrucao;
    int i, n, k, xf, yf, dist;

    cin >> n >> k >> xf >> yf;
    k *= k;
    dist = (xf * xf) + (yf * yf);

    for (i = 0; i < n; ++i)
    {
        if (dist == 0 || dist >= k)
            break;

        cin >> instrucao;

        switch (instrucao)
        {
        case 'C':
            dist -= 2 * yf - 1;
            yf -= 1;
            break;
        case 'B':
            dist += 2 * yf + 1;
            yf += 1;
            break;
        case 'E':
            dist += 2 * xf + 1;
            xf += 1;
            break;
        case 'D':
            dist -= 2 * xf - 1;
            xf -= 1;
            break;
        }
    }

    if (dist == 0)
    {
        cout << "Sucesso" << endl;
    }
    else
    {
        cout << "Trap " << min(i + 1, n) << endl;
    }

    return 0;
}
