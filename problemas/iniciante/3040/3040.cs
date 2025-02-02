using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        int n = int.Parse(Console.ReadLine());
       
        for (int i = 0; i < n; ++i)
        {
            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int altura = numeros[0];
            int espessura = numeros[1];
            int galhos = numeros[2];

            if (200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos)
            {
                Console.WriteLine("Sim");
            }
            else
            {
                Console.WriteLine("Nao");
            }
        }
    }
}
