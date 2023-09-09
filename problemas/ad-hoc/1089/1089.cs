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
            
            List<int> H = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int picos = 0;
            for(int i = 0; i < N; ++i){
                int anterior = H[((i - 1) + N) % N];
                int proximo = H[(i + 1) % N];
                
                if((H[i] < anterior && H[i] < proximo) || (H[i] > anterior && H[i] > proximo)){
                    ++picos;
                }
            }
            
            Console.WriteLine(picos);
        }
    }
}