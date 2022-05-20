using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int L = int.Parse(entrada);

            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
            int maior = numeros.Aggregate(numeros[0], (cur, acc) => Math.Max(cur, acc));

            if (maior < 10)
            {
                Console.WriteLine(1);
            }
            else if (maior < 20)
            {
                Console.WriteLine(2);
            }
            else
            {
                Console.WriteLine(3);
            }
        }
    }
}