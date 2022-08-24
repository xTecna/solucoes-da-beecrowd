using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
        Console.WriteLine($"{100 * entrada[1] / entrada[0] - 100:0.00}%");
    }
}