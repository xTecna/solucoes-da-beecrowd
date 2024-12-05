using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        int maior = numeros[0];
        for(int i = 1; i < numeros.Count; ++i){
            maior = Math.Max(maior, numeros[i]);
        }

        Console.WriteLine(maior);
    }
}