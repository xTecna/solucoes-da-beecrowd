using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int Comp(int a, int b){
        return b - a;
    }
    
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int k = 0; k < N; ++k){
            int M = int.Parse(Console.ReadLine());
            
            List<int> alunos = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            List<int> ordenada = new List<int>(alunos);
            
            ordenada.Sort(Comp);
            
            int resposta = 0;
            for(int i = 0; i < M; ++i){
                if(alunos[i] == ordenada[i]){
                    resposta += 1;
                }
            }
            Console.WriteLine(resposta);
        }
    }
}