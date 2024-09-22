using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> disponiveis = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x))
        List<int> requisitadas = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x

        int resposta = 0;
        for(int i = 0; i < 3; ++i){
            resposta += (requisitadas[i] > disponiveis[i]) ? (requisitadas[i] - disponiveis[i  
        }

        Console.WriteLine(resposta);
    }
