using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            int soma = 0;
            List<int> votos = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            for(int i = 0; i < N; ++i){
                soma += votos[i];
            }

            Console.WriteLine(soma >= 2.0 * N / 3.0 ? "impeachment" : "acusacao arquivada");
        }
    }
}