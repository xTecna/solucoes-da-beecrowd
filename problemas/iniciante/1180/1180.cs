using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine().Trim());

        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        int menor = entrada[0], posicao = 0;

        for(int i = 1; i < N; ++i){
            if(entrada[i] < menor){
                menor = entrada[i];
                posicao = i;
            }
        }

        Console.WriteLine($"Menor valor: {menor}");
        Console.WriteLine($"Posicao: {posicao}");
    }
}