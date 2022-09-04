#include <iostream>

using namespace std;

int mapa[101][101];

bool segura(int x, int y)
{
    return mapa[x][y] + mapa[x + 1][y] + mapa[x][y + 1] + mapa[x + 1][y + 1] >= 2;
}

int main()
{
    int N;

    cin >> N;
    for (int i = 0; i < N + 1; ++i)
    {
        for (int j = 0; j < N + 1; ++j)
        {
            cin >> mapa[i][j];
        }
    }

    for (int i = 0; i < N; ++i)
    {
        for (int j = 0; j < N; ++j)
        {
            cout << (segura(i, j) ? 'S' : 'U');
        }
        cout << endl;
    }

    return 0;
}