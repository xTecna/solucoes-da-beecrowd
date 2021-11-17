void countingSort(int *V, int n, int limite)
{
    int *aux = (int *)malloc(limite * sizeof(int));
    int k = 0;

    for (int i = 0; i < limite; ++i)
    {
        aux[i] = 0;
    }

    for (int i = 0; i < n; ++i)
    {
        aux[V[i]] += 1;
    }

    for (int i = 0; i < limite; ++i)
    {
        for (int j = 0; j < aux[i]; ++j)
        {
            V[k++] = i;
        }
    }

    free(aux);
}