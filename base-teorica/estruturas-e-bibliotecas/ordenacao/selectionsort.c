void swap(int *a, int *b)
{
    int aux = *a;
    *a = *b;
    *b = aux;
}

void selectionSort(int *V, int n)
{
    for (int i = 0; i < n - 1; ++i)
    {
        int k = i;

        for (int j = i + 1; j < n; ++j)
        {
            k = comp(V[j], V[k]) < 0 ? j : k;
        }

        swap(&V[i], &V[k]);
    }
}