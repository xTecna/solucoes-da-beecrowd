using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int T = int.Parse(Console.ReadLine());
        for(int k = 1; k <= T; ++k){
            List<int> idades = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).Skip(1).ToList();
            
            Console.WriteLine($"Case {k}: {idades[idades.Count / 2]}");
        }
    }
}