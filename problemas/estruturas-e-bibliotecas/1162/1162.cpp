#include <iostream>
#include <vector>

using namespace std;

bool comp(int a, int b)
{
    return a < b;
}

template <class T>
int insertionSort(vector<T> &V)
{
    int trocas = 0, n = V.size();

    for (int i = 0; i < n; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(V[j], V[k]))
        {
            swap(V[k], V[j]);
            ++trocas;
            --j, --k;
        }
    }

    return trocas;
}

int main()
{
    int N, L;
    vector<int> vagoes;

    cin >> N;

    for (int k = 0; k < N; ++k)
    {
        cin >> L;

        vagoes.assign(L, 0);
        for (int i = 0; i < L; ++i)
        {
            cin >> vagoes[i];
        }

        cout << "Optimal train swapping takes " << insertionSort(vagoes) << " swaps." << endl;
    }

    return 0;
}
