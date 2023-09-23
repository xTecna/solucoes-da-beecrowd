using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        HashSet<string> pomekons = new HashSet<string>();
        for(int i = 0; i < N; ++i){
            string pomekon = Console.ReadLine().Trim();
            pomekons.Add(pomekon);
        }

        Console.WriteLine($"Falta(m) {151 - pomekons.Count} pomekon(s).");
    }
}