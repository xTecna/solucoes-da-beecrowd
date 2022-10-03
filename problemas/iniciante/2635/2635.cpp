#include <iostream>
#include <iomanip>
#include <map>

using namespace std;

class TrieNo
{
public:
    int qtd;
    int maxPalavra;
    map<char, TrieNo> prox;

    TrieNo()
    {
        qtd = 0;
        maxPalavra = 0;
        prox = map<char, TrieNo>();
    }
};

class Trie
{
public:
    TrieNo raiz;

    Trie()
    {
        raiz = TrieNo();
    }

    void adicionaPalavra(string palavra)
    {
        TrieNo *no = &raiz;
        int n = palavra.length();
        for (int i = 0; i < n; ++i)
        {
            char indice = palavra[i];
            if (!(no->prox.count(indice)))
            {
                no->prox[indice] = TrieNo();
            }
            no = &(no->prox[indice]);
            no->qtd += 1;
            no->maxPalavra = max(no->maxPalavra, n);
        }
    }

    pair<int, int> consultaPalavra(string palavra)
    {
        TrieNo *no = &raiz;
        for (int i = 0; i < palavra.length(); ++i)
        {
            char indice = palavra[i];
            if (!(no->prox.count(indice)))
            {
                return pair<int, int>(-1, -1);
            }
            no = &(no->prox[indice]);
        }

        return pair<int, int>(no->qtd, no->maxPalavra);
    }
};

int main()
{
    int N, Q;
    string palavra;

    while (cin >> N)
    {
        Trie trie;

        for (int i = 0; i < N; ++i)
        {
            cin >> palavra;
            trie.adicionaPalavra(palavra);
        }

        cin >> Q;
        for (int i = 0; i < Q; ++i)
        {
            cin >> palavra;
            pair<int, int> resultado = trie.consultaPalavra(palavra);

            if (resultado.first == -1 && resultado.second == -1)
            {
                cout << -1 << endl;
            }
            else
            {
                cout << resultado.first << ' ' << resultado.second << endl;
            }
        }
    }

    return 0;
}