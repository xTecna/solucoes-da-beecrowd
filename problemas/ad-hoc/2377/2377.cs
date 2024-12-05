using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        List<int> LD = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        List<int> KP = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        int L = LD[0];
        int D = LD[1];
        int K = KP[0];
        int P = KP[1];

        Console.WriteLine(L * K + (L / D) * P);
    }
}
