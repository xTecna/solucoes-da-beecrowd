#include <iostream>

using namespace std;

int main()
{
    int C, pos1, pos2;
    string palavra1, palavra2, palavraAtual;

    cin >> C;
    for (int k = 0; k < C; ++k)
    {
        cin >> palavra1 >> palavra2 >> palavraAtual;

        pos1 = -1;
        pos2 = -1;
        for (int i = 0; i < palavraAtual.length(); ++i)
        {
            if (palavraAtual[i] == '_')
            {
                if (pos1 == -1)
                {
                    pos1 = i;
                }
                else
                {
                    pos2 = i;
                    break;
                }
            }
        }

        if (palavra1[pos1] == palavra2[pos2] ||
            palavra1[pos2] == palavra2[pos1])
        {
            cout << 'Y' << endl;
        }
        else
        {
            cout << 'N' << endl;
        }
    }

    return 0;
}