void merge(int *V, int inicio, int meio, int fim)
{
    int *aux = (int *)malloc((fim - inicio) * sizeof(int));
    int i = 0, i1 = inicio, i2 = meio, n1 = meio, n2 = fim;

    while (i1 < n1 && i2 < n2)
    {
        if (comp(V[i1], V[i2]) < 0)
        {
            aux[i++] = V[i1++];
        }
        else
        {
            aux[i++] = V[i2++];
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

    free(aux);
}

void mergeSort(int *V, int inicio, int fim)
{
    if (fim - inicio > 1)
    {
        int meio = (inicio + fim) / 2;

        mergeSort(V, inicio, meio);
        mergeSort(V, meio, fim);
        merge(V, inicio, meio, fim);
    }
}