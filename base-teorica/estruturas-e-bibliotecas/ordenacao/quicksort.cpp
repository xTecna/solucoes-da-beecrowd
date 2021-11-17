template <class T>
int particao(vector<T> &V, int inicio, int fim)
{
    T pivo = V[fim - 1];
    int i = inicio;

    for (int j = inicio; j < fim; ++j)
    {
        if (comp(V[j], pivo))
        {
            swap(V[i], V[j]);
            ++i;
        }
    }

    if (comp(pivo, V[i]))
        swap(V[i], V[fim - 1]);

    return i;
}

template <class T>
void quickSort(vector<T> &V, int inicio, int fim)
{
    if (fim > inicio)
    {
        int posicaoPivo = particao(V, inicio, fim);

        quickSort(V, inicio, posicaoPivo);
        quickSort(V, posicaoPivo + 1, fim);
    }
}