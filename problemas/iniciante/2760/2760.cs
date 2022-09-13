using System;
using System.Runtime;

class URI
{
    static void Main(string[] args)
    {
        string[] nomes = new string[3];
        for (int i = 0; i < 3; ++i)
        {
            nomes[i] = Console.ReadLine();
        }

        Console.WriteLine($"{nomes[0]}{nomes[1]}{nomes[2]}");
        Console.WriteLine($"{nomes[1]}{nomes[2]}{nomes[0]}");
        Console.WriteLine($"{nomes[2]}{nomes[0]}{nomes[1]}");
        Console.WriteLine($"{nomes[0].Substring(0, Math.Min(nomes[0].Length, 10))}{nomes[1].Substring(0, Math.Min(nomes[1].Length, 10))}{nomes[2].Substring(0, Math.Min(nomes[2].Length, 10))}");
    }
}