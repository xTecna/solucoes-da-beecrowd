template <class T>
void selectionSort(vector<T> &V)
{
    int n = V.size();

    for (int i = 0; i < n - 1; ++i)
    {
        int k = i;

        for (int j = i + 1; j < n; ++j)
        {
            k = comp(V[j], V[k]) ? j : k;
        }

        swap(V[i], V[k]);
    }
}