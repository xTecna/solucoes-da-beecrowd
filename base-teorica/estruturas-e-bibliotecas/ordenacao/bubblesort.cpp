template <class T>
void selectionSort(vector<T> &V)
{
    int n = V.size();

    for (int i = 0; i < n - 1; ++i)
    {
        for (int j = 1; j < n - i; ++j)
        {
            int k = j - 1;

            if (comp(V[j], V[k]))
            {
                swap(V[j], V[k]);
            }
        }
    }
}