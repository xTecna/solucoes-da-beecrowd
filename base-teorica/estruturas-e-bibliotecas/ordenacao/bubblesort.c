void swap(int *a, int *b)
{
    int aux = *a;
    *a = *b;
    *b = aux;
}

void bubbleSort(int *V, int n)
{
    for (int i = 0; i < n - 1; ++i)
    {
        for (int j = 1; j < n - i; ++j)
        {
            int k = j - 1;

            if (comp(V[j], V[k]) < 0)
            {
                swap(&V[k], &V[j]);
            }
        }
    }
}