using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI
{
    static bool fazTriangulo(int a, int b, int c)
    {
        return (Math.Abs(b - c) < a && a < b + c && Math.Abs(a - c) < b && b < a + c && Math.Abs(a - b) < c && c < a + b);
    }

    static void Main(string[] args)
    {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

        bool resposta = fazTriangulo(entrada[0], entrada[1], entrada[2]) || fazTriangulo(entrada[0], entrada[1], entrada[3]) || fazTriangulo(entrada[0], entrada[2], entrada[3]) || fazTriangulo(entrada[1], entrada[2], entrada[3]);

        Console.WriteLine(resposta ? "S" : "N");
    }
}