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

        if (B < A && C >= B)
        {
            Console.WriteLine(":)");
        }
        else if (B > A && C <= B)
        {
            Console.WriteLine(":(");
        }
        else if (B > A && C > B && C - B < B - A)
        {
            Console.WriteLine(":(");
        }
        else if (B > A && C > B && C - B >= B - A)
        {
            Console.WriteLine(":)");
        }
        else if (B < A && C < B && B - C < A - B)
        {
            Console.WriteLine(":)");
        }
        else if (B < A && C < B && B - C >= A - B)
        {
            Console.WriteLine(":(");
        }
        else if (A == B)
        {
            if (C > B)
            {
                Console.WriteLine(":)");
            }
            else
            {
                Console.WriteLine(":(");
            }
        }
    }
}