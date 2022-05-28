using System;

class URI
{
    static void Main(string[] args)
    {
        int T = 0;
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            string[] numeros = entrada.Trim().Split(' ');

            int N = int.Parse(numeros[0]);
            int Q = int.Parse(numeros[1]);

            if (N == 0 && Q == 0)
            {
                break;
            }

            int[] marmores = new int[10000];
            for (int i = 0; i < N; ++i)
            {
                marmores[int.Parse(Console.ReadLine())] += 1;
            }

            for (int i = 1; i < 10000; ++i)
            {
                marmores[i] += marmores[i - 1];
            }

            Console.WriteLine($"CASE# {++T}:");
            for (int i = 0; i < Q; ++i)
            {
                int x = int.Parse(Console.ReadLine());

                if (marmores[x] == marmores[x - 1])
                {
                    Console.WriteLine($"{x} not found");
                }
                else
                {
                    Console.WriteLine($"{x} found at {marmores[x - 1] + 1}");
                }
            }
        }
    }
}