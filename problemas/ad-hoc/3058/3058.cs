using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        double menor_preco = 1000.0;
        for(int i = 0; i < N; ++i){
            List<double> numeros = Console.ReadLine().Trim().Split(' ').Select(x => double.Parse(x)).ToList();
            double p = numeros[0];
            double g = numeros[1];

            menor_preco = Math.Min(menor_preco, p / g);
        }
        
        Console.WriteLine($"{(1000.0 * menor_preco):0.00}");
    }
}