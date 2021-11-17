void countingSort(vector<int> &V, int limite)
{
    vector<int> aux(limite, 0);
    int k = 0, n = V.size();

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
}