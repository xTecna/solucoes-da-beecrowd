using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int M = int.Parse(entrada);

            int numerador = 0;
            int denominador = 0;
            for(int i = 0; i < M; ++i){
                List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

                numerador += numeros[0] * numeros[1];
                denominador += numeros[1];
            }

            Console.WriteLine($"{numerador/(100.0 * denominador):0.0000}");
        }
    }
}