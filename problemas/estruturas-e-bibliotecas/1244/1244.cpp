#include <iostream>
#include <sstream>
#include <vector>

using namespace std;

bool comp(string a, string b)
{
    return a.length() > b.length();
}

template <class T>
void insertionSort(vector<T> &V)
{
    int n = V.size();

    for (int i = 0; i < n; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(V[j], V[k]))
        {
            swap(V[k], V[j]);
            --j, --k;
        }
    }
}

int main()
{
    int N;
    stringstream fluxo;
    string frase, palavra;
    vector<string> palavras;

    cin >> N;
    cin.ignore();

    for (int i = 0; i < N; ++i)
    {
        getline(cin, frase);

        fluxo.clear();
        fluxo << frase;
        palavras.clear();
        while (fluxo >> palavra)
        {
            palavras.push_back(palavra);
        }

        insertionSort(palavras);

        cout << palavras[0];
        for (int i = 1; i < palavras.size(); ++i)
        {
            cout << ' ' << palavras[i];
        }
        cout << endl;
    }

    return 0;
}
