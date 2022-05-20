using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        int T = int.Parse(Console.ReadLine());

        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        int menor = entrada[0];
        int resposta = 1;
        for (int i = 1; i < T; ++i)
        {
            if (entrada[i] < menor)
            {
                menor = entrada[i];
                resposta = i + 1;
            }
        }

        Console.WriteLine(resposta);
    }
}