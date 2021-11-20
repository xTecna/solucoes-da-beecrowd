#include <iostream>
#include <vector>
#include <list>

using namespace std;

int funcaoHash(int valor, int M)
{
    return valor % M;
}

int main()
{
    int N, M, C, numero;
    vector<list<int>> tabelaHash;

    cin >> N;

    for (int k = 0; k < N; ++k)
    {
        if (k)
            cout << endl;

        cin >> M >> C;

        tabelaHash.assign(M, list<int>());
        for (int i = 0; i < C; ++i)
        {
            cin >> numero;

            tabelaHash[funcaoHash(numero, M)].push_back(numero);
        }

        for (int i = 0; i < M; ++i)
        {
            cout << i << " -> ";

            for (list<int>::iterator it = tabelaHash[i].begin(); it != tabelaHash[i].end(); ++it)
            {
                cout << *it << " -> ";
            }

            cout << "\\" << endl;
        }
    }

    return 0;
}
