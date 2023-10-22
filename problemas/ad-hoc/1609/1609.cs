using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int T = int.Parse(Console.ReadLine());

        for(int k = 0; k < T; ++k){
            int N = int.Parse(Console.ReadLine());
            List<int> carneiros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            HashSet<int> diferentes = new HashSet<int>(carneiros);
            Console.WriteLine(diferentes.Count);
        }
    }
}