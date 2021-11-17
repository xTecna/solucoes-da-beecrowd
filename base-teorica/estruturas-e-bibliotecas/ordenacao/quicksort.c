void swap(int *a, int *b)
{
    int aux = *a;
    *a = *b;
    *b = aux;
}

int particao(int *V, int inicio, int fim)
{
    int pivo = V[fim - 1];
    int i = inicio;

    for (int j = inicio; j < fim; ++j)
    {
        if (comp(V[j], pivo) < 0)
        {
            swap(&V[j], &V[i]);
            i += 1;
        }
    }

    if (comp(pivo, V[i]) < 0)
    {
        swap(&V[i], &V[fim - 1]);
    }

    return i;
}

void quickSort(int *V, int inicio, int fim)
{
    if (fim > inicio)
    {
        int posicaoPivo = particao(V, inicio, fim);

        quickSort(V, inicio, posicaoPivo);
        quickSort(V, posicaoPivo + 1, fim);
    }
}