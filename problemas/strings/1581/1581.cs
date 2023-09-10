using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int k = 0; k < N; ++k){
            int K = int.Parse(Console.ReadLine());
            
            bool mesmoIdioma = true;
            string idioma = Console.ReadLine();
            for(int i = 1; i < K; ++i){
                string S = Console.ReadLine();
                
                if(S != idioma){
                    mesmoIdioma = false;
                }
            }
            
            if(mesmoIdioma){
                Console.WriteLine(idioma);
            }else{
                Console.WriteLine("ingles");
            }
        }
    }
}