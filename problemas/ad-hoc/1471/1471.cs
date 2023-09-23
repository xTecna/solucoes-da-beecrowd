using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            
            int N = numeros[0];
            int R = numeros[1];
            
            bool[] voluntarios = new bool[N + 1];
            numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            for(int i = 0; i < R; ++i){
                voluntarios[numeros[i]] = true;
            }
            
            if(N == R){
                Console.WriteLine("*");
            }else{
                for(int i = 1; i <= N; ++i){
                    if(!voluntarios[i]) Console.Write($"{i} ");
                }
                Console.WriteLine("");
            }
        }
    }
}