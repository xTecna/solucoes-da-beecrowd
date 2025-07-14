using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        int k = 1;
        while ((entrada = Console.ReadLine()) != null)
        {
            List<long> numeros = entrada.Trim().Split(' ').Select(x => long.Parse(x)).ToList();
            long FP = numeros[0];
            long FH = numeros[1];

            long ligacoes = (5L * FP + 6L * FH) / 2L;
            long atomos = ligacoes + 2L - FP - FH;

            Console.WriteLine($"Molecula #{k++}.:.");
            Console.WriteLine($"Possui {atomos} atomos e {ligacoes} ligacoes");
            Console.WriteLine("");
        }
    }
}