void Crivo(vector<bool> &C, int n)
{
    C.assign(n, true);

    C[1] = false;

    for (int i = 4; i < n; i += 2)
    {
        C[i] = false;
    }

    for (int i = 3; i < n; i += 2)
    {
        if (C[i])
        {
            for (int j = i * 3; j < n; j += 2 * i)
            {
                C[j] = false;
            }
        }
    }
}