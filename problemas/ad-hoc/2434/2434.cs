using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        int n = entrada[0];
        int saldo = entrada[1];

        int resposta = saldo;
        for(int i = 0; i < n; ++i){
            int movimentacao = int.Parse(Console.ReadLine().Trim());
            saldo += movimentacao;

            resposta = Math.Min(resposta, saldo);
        }

        Console.WriteLine(resposta);
    }
}