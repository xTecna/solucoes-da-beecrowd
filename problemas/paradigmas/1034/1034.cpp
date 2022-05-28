#include <iostream>
#include <vector>

using namespace std;

int N, M;
vector<int> blocos, mochila;

int min(int a, int b)
{
    return a < b ? a : b;
}

int calculaMochila()
{
    mochila.assign(M + 1, -1);
    mochila[0] = 0;

    int resposta = M;
    for (int i = 0; i < N; ++i)
    {
        int bloco = blocos[i];

        for (int j = bloco; j <= M; ++j)
        {
            if (mochila[j - bloco] != -1)
            {
                if (mochila[j] == -1)
                {
                    mochila[j] = mochila[j - bloco] + 1;
                }
                else
                {
                    mochila[j] = min(mochila[j], mochila[j - bloco] + 1);
                }
            }
        }
    }

    return mochila[M];
}

int main()
{
    int T;

    cin >> T;
    for (int k = 0; k < T; ++k)
    {
        cin >> N >> M;
        blocos.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> blocos[i];
        }

        cout << calculaMochila() << endl;
    }

    return 0;
}