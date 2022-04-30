using System;

class URI {
    static int[] F;

    static int Fatorial(int n){
        if(F[n] == -1){
            F[n] = Fatorial(n - 1) * n;
        }
        return F[n];
    }
    
    static void Main(string[] args) {
        F = new int[14];
        
        F[0] = 1;
        for(int i = 1; i < 14; ++i){
            F[i] = -1;
        }

        int N = int.Parse(Console.ReadLine());

        Console.WriteLine(Fatorial(N));
    }
}