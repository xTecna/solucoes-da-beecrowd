using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        int[] multiplos = new int[] { 0, 0, 0, 0, 0, 0 };

        int N = int.Parse(Console.ReadLine());
        List<int> numeros = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

        for (int i = 2; i < 6; ++i)
        {
            Console.WriteLine($"{numeros.Aggregate(0, (acc, cur) => (cur % i == 0) ? acc + 1 : acc)} Multiplo(s) de {i}");
        }
    }
}