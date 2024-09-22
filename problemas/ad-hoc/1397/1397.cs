using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);
            
            if(N == 0){
                break;
            }
            
            int A = 0;
            int B = 0;
            for(int i = 0; i < N; ++i){
                List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse
                
                if(numeros[0] > numeros[1]){
                    ++A;
                }else if(numeros[1] > numeros[0]){
                    ++B;
                }
            }
            Console.WriteLine($"{A} {B}");
        }
    }
