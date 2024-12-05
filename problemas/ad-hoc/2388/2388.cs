using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        int n = int.Parse(Console.ReadLine());

        int resposta = 0;
        for (int i = 0; i < n; ++i)
        {
            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            resposta += numeros[0] * numeros[1];
        }

        Console.WriteLine(resposta);
    }
}