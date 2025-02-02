using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        int T = int.Parse(Console.ReadLine());
        for (int k = 0; k < T; ++k)
        {
            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int D = numeros[0];
            int I = numeros[1];
            int B = numeros[2];

            List<int> precos = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int resposta = 0;
            for (int i = 0; i < B; ++i)
            {
                List<int> bolo = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                bolo.RemoveAt(0);

                int custo = 0;
                for (int j = 0; j < bolo.Count; j += 2)
                {
                    custo += precos[bolo[j]] * bolo[j + 1];
                }

                resposta = Math.Max(resposta, D / custo);
            }

            Console.WriteLine(resposta);
        }
    }
}