using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            int K = int.Parse(entrada);
            
            if(K == 0){
                break;
            }
            
            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x))
            int N = numeros[0];
            int M = numeros[1];
            for(int k = 0; k < K; ++k){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList
                int X = numeros[0] - N;
                int Y = numeros[1] - M;
                
                if(X > 0){
                    if(Y > 0)       Console.WriteLine("NE");
                    else if(Y < 0)  Console.WriteLine("SE");
                    else            Console.WriteLine("divisa");
                }else if(X < 0){
                    if(Y > 0)       Console.WriteLine("NO");
                    else if(Y < 0)  Console.WriteLine("SO");
                    else            Console.WriteLine("divisa");
                }else{
                    Console.WriteLine("divisa");
                }
            }
        }
    }
