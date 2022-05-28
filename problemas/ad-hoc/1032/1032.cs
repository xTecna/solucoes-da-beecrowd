using System;
using System.Collections.Generic;

class URI
{
    const int LIMITE = 3502;
    const int PRIMO_LIMITE = 32612;

    static int[,] F;
    static bool[] C;
    static List<int> primos;

    static void Crivo()
    {
        C = new bool[PRIMO_LIMITE];
        C[0] = false;
        C[1] = false;
        C[2] = true;

        primos = new List<int>();
        primos.Add(2);

        for (int i = 3; i < PRIMO_LIMITE; ++i)
        {
            C[i] = (i % 2 == 1);
        }

        for (int i = 3; i < PRIMO_LIMITE; i += 2)
        {
            if (C[i])
            {
                primos.Add(i);
                for (int j = 3 * i; j < PRIMO_LIMITE; j += 2 * i)
                {
                    C[j] = false;
                }
            }
        }
    }

    static int josephus(int n, int k)
    {
        if (F[n, k] == -1)
        {
            F[n, k] = (josephus(n - 1, k + 1) + primos[k] - 1) % n + 1;
        }
        return F[n, k];
    }

    static void Main(string[] args)
    {
        string entrada;

        Crivo();

        F = new int[LIMITE, LIMITE];
        for (int i = 0; i < LIMITE; ++i)
        {
            for (int j = 0; j < LIMITE; ++j)
            {
                F[i, j] = -1;
            }
        }

        for (int i = 0; i < LIMITE; ++i)
        {
            F[1, i] = 1;
        }

        while ((entrada = Console.ReadLine()) != null)
        {
            int n = int.Parse(entrada);

            if(n == 0){
                break;
            }

            Console.WriteLine(josephus(n, 0));
        }
    }
}