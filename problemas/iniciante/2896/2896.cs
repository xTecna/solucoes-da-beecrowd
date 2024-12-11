using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        int t = int.Parse(Console.ReadLine());
       
        for (int i = 0; i < t; ++i)
        {
          List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
          Console.WriteLine(numeros[0] / numeros[1] + numeros[0] % numeros[1]);
        }
    }
}
