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
            
            for(int k = 0; k < N; ++k){
                List<int> folha = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                
                int opcao = -1;
                int corretos = 0;
                for(int i = 0; i < 5; ++i){
                    if(folha[i] <= 127){
                        opcao = i;
                        ++corretos;
                    }
                }
                
                if(corretos == 1){
                    Console.WriteLine((char)(opcao + (int)'A'));
                }else{
                    Console.WriteLine("*");
                }
            }
        }
    }
}