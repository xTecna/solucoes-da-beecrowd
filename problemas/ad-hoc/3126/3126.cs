using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int C = int.Parse(Console.ReadLine());
        List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        int resposta = 0;
        for(int i = 0; i < C; ++i) {
            resposta += numeros[i];
        }

        Console.WriteLine(resposta);
    }
}