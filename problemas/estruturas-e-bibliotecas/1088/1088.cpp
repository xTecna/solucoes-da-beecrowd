#include <iostream>
#include <vector>

using namespace std;

int inversoes;

bool comp(int a, int b)
{
    return a < b;
}

template <class T>
void merge(vector<T> &V, int inicio, int meio, int fim)
{
    vector<int> aux(V.begin() + inicio, V.begin() + fim);
    int i = 0, i1 = inicio, i2 = meio, n1 = meio, n2 = fim;

    while (i1 < n1 && i2 < n2)
    {
        if (comp(V[i1], V[i2]))
        {
            aux[i++] = V[i1++];
        }
        else
        {
            aux[i++] = V[i2++];
            inversoes += (n1 - i1);
        }
    }

    while (i1 < n1)
        aux[i++] = V[i1++];
    while (i2 < n2)
        aux[i++] = V[i2++];

    for (int i = inicio; i < fim; ++i)
    {
        V[i] = aux[i - inicio];
    }
}

template <class T>
void mergeSort(vector<T> &V, int inicio, int fim)
{
    if (fim - inicio > 1)
    {
        int meio = (inicio + fim) / 2;

        mergeSort(V, inicio, meio);
        mergeSort(V, meio, fim);
        merge(V, inicio, meio, fim);
    }
}

int main()
{
    int N;
    vector<int> P;

    while (cin >> N)
    {
        if (!N)
            break;

        P.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> P[i];
        }

        inversoes = 0;
        mergeSort(P, 0, P.size());

        cout << (string)(inversoes % 2 ? "Marcelo" : "Carlos") << endl;
    }

    return 0;
}
