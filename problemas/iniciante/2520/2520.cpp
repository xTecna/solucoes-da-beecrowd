#include <iostream>
#include <cmath>

using namespace std;

int distanciaManhattan(int x1, int y1, int x2, int y2)
{
    return abs(x1 - x2) + abs(y1 - y2);
}

int main()
{
    int N, M, numero, x1, y1, x2, y2;

    while (cin >> N >> M)
    {
        for (int i = 0; i < N; ++i)
        {
            for (int j = 0; j < M; ++j)
            {
                cin >> numero;

                if (numero == 1)
                {
                    x1 = i;
                    y1 = j;
                }
                else if (numero == 2)
                {
                    x2 = i;
                    y2 = j;
                }
            }
        }

        cout << distanciaManhattan(x1, y1, x2, y2) << endl;
    }

    return 0;
}