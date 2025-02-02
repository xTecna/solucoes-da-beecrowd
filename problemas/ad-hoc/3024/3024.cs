using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI
{
    static void Main(string[] args)
    {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        int N = entrada[0];
        int X = entrada[1];

        List<int> montanhas = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        int resposta = 1;
        int atual = 1;
        for (int i = 1; i < montanhas.Count; ++i)
        {
            if (montanhas[i] <= montanhas[i - 1] + X)
            {
                atual += 1;
            }
            else
            {
                resposta = Math.Max(resposta, atual);
                atual = 1;
            }
        }

        resposta = Math.Max(resposta, atual);
        Console.WriteLine(resposta);
    }
}