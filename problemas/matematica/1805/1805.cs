using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static long somaPA(int a0, int an, int n){
        return ((long)(a0 + an) * n) / 2;
    }

    static void Main(string[] args) {
        List<int> AB = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        Console.WriteLine(somaPA(AB[0], AB[1], AB[1] - AB[0] + 1));
    }
}