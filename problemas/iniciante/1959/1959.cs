using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        List<long> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => long.Parse(x)).ToList();
        Console.WriteLine(entrada[0] * entrada[1]);
    }
}