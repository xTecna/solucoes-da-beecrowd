#include <iostream>

using namespace std;

int matriz[102][102];

int paesDeQueijoVizinhos(int i, int j)
{
    return matriz[i - 1][j] + matriz[i + 1][j] + matriz[i][j - 1] + matriz[i][j + 1];
}

int main()
{
    int N, M;

    while (cin >> N >> M)
    {
        for (int i = 0; i <= N + 1; ++i)
        {
            for (int j = 0; j <= M + 1; ++j)
            {
                matriz[i][j] = 0;
            }
        }

        for (int i = 1; i <= N; ++i)
        {
            for (int j = 1; j <= M; ++j)
            {
                cin >> matriz[i][j];
            }
        }

        for (int i = 1; i <= N; ++i)
        {
            for (int j = 1; j <= M; ++j)
            {
                if (matriz[i][j] == 0)
                {
                    cout << paesDeQueijoVizinhos(i, j);
                }
                else
                {
                    cout << 9;
                }
            }
            cout << endl;
        }
    }

    return 0;
}