#include <iostream>

using namespace std;

int main()
{
    int N, M;
    string acao;

    cin >> N >> M;
    for (int i = 0; i < M; ++i)
    {
        cin >> acao;

        if (acao == "fechou")
        {
            ++N;
        }
        else
        {
            --N;
        }
    }

    cout << N << endl;

    return 0;
}