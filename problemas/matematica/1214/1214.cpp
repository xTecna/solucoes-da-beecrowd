#include <iostream>
#include <iomanip>
#include <vector>

using namespace std;

int main()
{
    int N, C;
    vector<int> alunos;
    double media, resposta;

    cin >> C;

    for (int k = 0; k < C; ++k)
    {
        cin >> N;

        media = 0.0;
        alunos.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> alunos[i];

            media += alunos[i];
        }

        media /= N;
        resposta = 0;
        for (int i = 0; i < N; ++i)
        {
            if (alunos[i] > media)
            {
                resposta += 1;
            }
        }

        resposta = resposta / N * 100;
        cout << setprecision(3) << fixed << resposta << "%" << endl;
    }

    return 0;
}
