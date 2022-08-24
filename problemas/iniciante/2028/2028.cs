using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static int somaPA(int an)
    {
        return (an * (an + 1)) / 2;
    }

    static void Main(string[] args)
    {
        string entrada;

        int k = 1;
        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada.Trim());

            Console.WriteLine($"Caso {k++}: {somaPA(N) + 1} numero{(N == 0 ? "" : "s")}");

            List<int> resposta = new List<int>();
            resposta.Add(0);
            for (int i = 1; i <= N; ++i)
            {
                for (int j = 0; j < i; ++j)
                {
                    resposta.Add(i);
                }
            }
            Console.WriteLine(string.Join(" ", resposta));
            Console.WriteLine("");
        }
    }
}