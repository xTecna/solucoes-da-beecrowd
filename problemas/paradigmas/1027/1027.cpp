#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int max(int a, int b)
{
    return a > b ? a : b;
}

int main()
{
    int N, DP[1000][2];
    vector<pair<int, int>> pontos;

    while (cin >> N)
    {
        pontos.assign(N, pair<int, int>(0, 0));
        for (int i = 0; i < N; ++i)
        {
            cin >> pontos[i].first >> pontos[i].second;
        }
        sort(pontos.begin(), pontos.end());

        DP[0][0] = 1;
        DP[0][1] = 1;
        int resposta = 1;
        for (int i = 1; i < N; ++i)
        {
            DP[i][0] = 1;
            DP[i][1] = 1;

            for (int j = 0; j < i; ++j)
            {
                if (pontos[i].first == pontos[j].first)
                {
                    break;
                }

                if (pontos[i].second - pontos[j].second == 2)
                {
                    // Descendo, acrescentando mais um no caso em que j está acima
                    DP[i][1] = max(DP[i][1], DP[j][0] + 1);
                }
                else if (pontos[i].second - pontos[j].second == -2)
                {
                    // Subindo, acrescentando mais um no caso em que j está abaixo
                    DP[i][0] = max(DP[i][0], DP[j][1] + 1);
                }
            }

            resposta = max(resposta, max(DP[i][0], DP[i][1]));
        }

        cout << resposta << endl;
    }

    return 0;
}