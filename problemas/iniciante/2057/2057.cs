using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        Console.WriteLine((24 + entrada[0] + entrada[1] + entrada[2]) % 24);
    }
}