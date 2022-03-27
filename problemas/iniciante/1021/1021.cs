using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int[] notas = {10000, 5000, 2000, 1000, 500, 200};
        int[] moedas = {100, 50, 25, 10, 5, 1};
        
        List<int> entrada = Console.ReadLine().Trim().Split('.').Select((x) => int.Parse(x)).ToList();
        int reais = entrada[0] * 100 + entrada[1];
        
        Console.WriteLine("NOTAS:");
        foreach(int nota in notas){
            Console.WriteLine($"{reais/nota} nota(s) de R$ {nota/100.0:0.00}");
            reais %= nota;
        }
        
        Console.WriteLine("MOEDAS:");
        foreach(int moeda in moedas){
            Console.WriteLine($"{reais/moeda} moeda(s) de R$ {moeda/100.0:0.00}");
            reais %= moeda;
        }
    }
}