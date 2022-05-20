using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            List<int> numeros = entrada.Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
            if (numeros.Count == 1)
            {
                break;
            }

            Console.WriteLine($"{Math.Floor(Math.Sqrt(numeros[0] * numeros[1] * 100.0 / numeros[2])):0}");
        }
    }
}