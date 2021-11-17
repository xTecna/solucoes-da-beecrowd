void swap(int *a, int *b)
{
    int aux = *a;
    *a = *b;
    *b = aux;
}

void insertionSort(int *V, int n)
{
    for (int i = 1; i < n; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(V[j], V[k]) < 0)
        {
            swap(&V[j], &V[k]);
            --j, --k;
        }
    }
}