template <class T>
void insertionSort(vector<T> &V)
{
    int n = V.size();

    for (int i = 0; i < n; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(V[j], V[k]))
        {
            swap(V[k], V[j]);
            --j, --k;
        }
    }
}