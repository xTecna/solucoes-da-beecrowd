using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(numero => int.Parse(numero)).ToList();
        int n = numeros[0];
        int x = numeros[1];
        int y = numeros[2];

        double resposta = (double)n / (x + y);

        Console.WriteLine($"{resposta:0.00}");
    }
}
