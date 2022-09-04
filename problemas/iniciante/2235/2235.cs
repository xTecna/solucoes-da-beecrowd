using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        int A = entrada[0];
        int B = entrada[1];
        int C = entrada[2];

        if (A == B || A == C || B == C || A + B == C || A + C == B || B + C == A)
        {
            Console.WriteLine("S");
        }
        else
        {
            Console.WriteLine("N");
        }
    }
}