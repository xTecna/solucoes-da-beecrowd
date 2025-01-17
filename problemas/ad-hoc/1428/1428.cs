using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int t = int.Parse(Console.ReadLine());

        for(int i = 0; i < t; ++i){
            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int n = numeros[0];
            int m = numeros[1];

            Console.WriteLine(Math.Ceiling((n - 2) / 3.0) * Math.Ceiling((m - 2) / 3.0));
        }
    }
}