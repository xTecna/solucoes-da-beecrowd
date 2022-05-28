using System;
using System.Collections.Generic;

class URI
{
    static int pesquisaBinaria(List<int> V, int valor)
    {
        int inicio = 0;
        int fim = V.Count;

        while (inicio < fim)
        {
            int meio = (inicio + fim) / 2;

            if (V[meio] < valor)
            {
                inicio = meio + 1;
            }
            else
            {
                fim = meio;
            }
        }

        if (inicio >= V.Count)
        {
            return -1;
        }

        return V[inicio] == valor ? inicio + 1 : -1;
    }

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

            List<int> marmores = new List<int>();
            for (int i = 0; i < N; ++i)
            {
                marmores.Add(int.Parse(Console.ReadLine()));
            }
            marmores.Sort();

            Console.WriteLine($"CASE# {++T}:");
            for (int i = 0; i < Q; ++i)
            {
                int consulta = int.Parse(Console.ReadLine());

                int resposta = pesquisaBinaria(marmores, consulta);
                if (resposta == -1)
                {
                    Console.WriteLine($"{consulta} not found");
                }
                else
                {
                    Console.WriteLine($"{consulta} found at {resposta}");
                }
            }
        }
    }
}