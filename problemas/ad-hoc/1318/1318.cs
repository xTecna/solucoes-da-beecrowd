using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            
            int N = numeros[0];
            int M = numeros[1];
            
            if(N == 0 && M == 0){
                break;
            }
            
            int repetidos = 0;
            int[] bilhetes = new int[N + 1];
            numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            for(int i = 0; i < M; ++i){
                bilhetes[numeros[i]] += 1;
                if(bilhetes[numeros[i]] == 2){
                    ++repetidos;
                }
            }
            
            Console.WriteLine(repetidos);
        }
    }
}