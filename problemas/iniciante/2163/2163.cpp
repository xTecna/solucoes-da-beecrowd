#include <iostream>

using namespace std;

int mapa[1001][1001];

bool temSabre(int x, int y)
{
    for (int i = -1; i < 2; ++i)
    {
        for (int j = -1; j < 2; ++j)
        {
            if (i == 0 && j == 0)
            {
                continue;
            }

            if (mapa[x + i][y + j] != 7)
            {
                return false;
            }
        }
    }

    return mapa[x][y] == 42;
}

int main()
{
    int N, M;

    cin >> N >> M;
    for (int i = 0; i < N; ++i)
    {
        for (int j = 0; j < M; ++j)
        {
            cin >> mapa[i][j];
        }
    }

    int x = 0, y = 0;
    for (int i = 1; i < N - 1; ++i)
    {
        for (int j = 1; j < M - 1; ++j)
        {
            if (temSabre(i, j))
            {
                x = i + 1, y = j + 1;
                break;
            }
        }
    }

    cout << x << ' ' << y << endl;

    return 0;
}