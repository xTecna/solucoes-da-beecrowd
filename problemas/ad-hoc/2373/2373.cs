using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        int resposta = 0;

        int N = int.Parse(Console.ReadLine());
        for (int i = 0; i < N; ++i)
        {
            List<int> LC = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int L = LC[0];
            int C = LC[1];

            if (L > C)
            {
                resposta += C;
            }
        }

        Console.WriteLine(resposta);
    }
}
