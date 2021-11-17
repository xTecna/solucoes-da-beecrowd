void Crivo(int *C, int n)
{
    for (int i = 0; i < n; ++i)
    {
        C[i] = 1;
    }
    C[1] = 0;

    for (int i = 4; i < n; i += 2)
    {
        C[i] = 0;
    }

    for (int i = 3; i < n; i += 2)
    {
        if (C[i] == 1)
        {
            for (int j = i * 3; j < n; j += 2 * i)
            {
                C[j] = 0;
            }
        }
    }
}