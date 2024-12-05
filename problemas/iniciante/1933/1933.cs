using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI
{
    static void Main(string[] args)
    {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

        if (entrada[0] == entrada[1])
        {
            Console.WriteLine(entrada[0]);
        }
        else
        {
            Console.WriteLine(Math.Max(entrada[0], entrada[1]));
        }
    }
}