using System;

class URI {
    static void Main(string[] args) {
        string[] responsaveis = new string[] {"Rolien", "Naej", "Elehcim", "Odranoel"};
        
        int N = int.Parse(Console.ReadLine());
        
        for(int k = 0; k < N; ++k){
            int K = int.Parse(Console.ReadLine());
            
            for(int i = 0; i < K; ++i){
                int feedback = int.Parse(Console.ReadLine());
                Console.WriteLine(responsaveis[feedback - 1]);
            }
        }
    }
}