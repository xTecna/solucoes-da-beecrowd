using System;

class URI {
    static int[] F = new int[101];
    
    static int Feynman(int n){
        if(F[n] == 0){
            F[n] = Feynman(n - 1) + n * n;
        }
        return F[n];
    }
    
    static void Main(string[] args) {
        string entrada;
        
        F[1] = 1;
        
        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);
            
            if(N == 0){
                break;
            }
            
            Console.WriteLine(Feynman(N));
        }
    }
}