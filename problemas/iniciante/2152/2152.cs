using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int T = int.Parse(Console.ReadLine());
        for(int i = 0; i < T; ++i){
            List<int> entrada = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            Console.WriteLine($"{entrada[0]:00}:{entrada[1]:00} - A porta {(entrada[2] == 1 ? "abriu" : "fechou")}!");
        }
    }
}