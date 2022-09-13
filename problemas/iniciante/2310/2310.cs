using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int saquesTotais = 0, bloqueiosTotais = 0, ataquesTotais = 0;
        int saquesSucedidos = 0, bloqueiosSucedidos = 0, ataquesSucedidos = 0;
        
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string nome = Console.ReadLine();

            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            saquesTotais += numeros[0];
            bloqueiosTotais += numeros[1];
            ataquesTotais += numeros[2];

            numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            saquesSucedidos += numeros[0];
            bloqueiosSucedidos += numeros[1];
            ataquesSucedidos += numeros[2];
        }

        Console.WriteLine($"Pontos de Saque: {100.0 * saquesSucedidos / saquesTotais:0.00} %.");
        Console.WriteLine($"Pontos de Bloqueio: {100.0 * bloqueiosSucedidos / bloqueiosTotais:0.00} %.");
        Console.WriteLine($"Pontos de Ataque: {100.0 * ataquesSucedidos / ataquesTotais:0.00} %.");
    }
}