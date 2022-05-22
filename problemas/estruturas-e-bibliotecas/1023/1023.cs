using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI
{
    static void Main(string[] args)
    {
        int T = 0;
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada);
            if (N == 0)
            {
                break;
            }

            if (T > 0)
            {
                Console.WriteLine("");
            }

            int totalX = 0, totalY = 0;
            int[] consumos = new int[201];

            for (int i = 0; i < N; ++i)
            {
                List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

                totalX += numeros[0];
                totalY += numeros[1];
                consumos[numeros[1] / numeros[0]] += numeros[0];
            }

            Console.WriteLine($"Cidade# {++T}:");
            List<string> resposta = new List<string>();
            for (int i = 0; i < 201; ++i)
            {
                if (consumos[i] > 0)
                {
                    resposta.Add($"{consumos[i]}-{i}");
                }
            }
            Console.WriteLine(string.Join(" ", resposta));

            Console.WriteLine($"Consumo medio: {(Math.Truncate((100.0 * totalY) / totalX) / 100.0):N2} m3.");
        }
    }
}