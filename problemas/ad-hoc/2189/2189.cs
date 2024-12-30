using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int teste = 1;
        while (true) {
            int n = int.Parse(Console.ReadLine());

            if (n == 0) {
                break;
            }

            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int resposta = -1;
            for(int i = 0; i < n; ++i) {
                if (i + 1 == numeros[i]) {
                    resposta = i + 1;
                }
            }

            Console.WriteLine($"Teste {teste}");
            Console.WriteLine(resposta);
            Console.WriteLine("");

            teste += 1;
        }
    }
}