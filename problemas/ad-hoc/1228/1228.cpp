#include <iostream>
#include <vector>

using namespace std;

vector<int> pos_final;

bool comp(int a, int b)
{
    return pos_final[a] < pos_final[b];
}

template <class T>
int insertionSort(vector<T> &V)
{
    int n = V.size();
    int inversoes = 0;

    for (int i = 0; i < n; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(V[j], V[k]))
        {
            swap(V[k], V[j]);
            ++inversoes;
            --j, --k;
        }
    }

    return inversoes;
}

int main()
{
    int N;
    vector<int> comeco, final;

    while (cin >> N)
    {
        comeco.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> comeco[i];
        }

        final.assign(N, 0);
        pos_final.assign(N + 1, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> final[i];
            pos_final[final[i]] = i;
        }

        cout << insertionSort(comeco) << endl;
    }

    return 0;
}
