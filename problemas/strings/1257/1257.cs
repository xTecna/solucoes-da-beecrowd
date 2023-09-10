using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        
        for(int k = 0; k < N; ++k){
            int L = int.Parse(Console.ReadLine());
            
            int valor = 0;
            for(int i = 0; i < L; ++i){
                string frase = Console.ReadLine();
                
                for(int j = 0; j < frase.Length; ++j){
                    valor += frase[j] - 'A' + i + j;
                }
            }
            
            Console.WriteLine(valor);
        }
    }
}