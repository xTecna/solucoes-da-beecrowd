using System;

class URI {
    static int[] F;

    static int Fibonacci(int n){
        if(F[n] == -1){
            F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
        }
        return F[n];
    }

    static void Main(string[] args) {
        F = new int[46];

        F[0] = 0;
        F[1] = 1;
        for(int i = 2; i < 46; ++i){
            F[i] = -1;
        }

        int N = int.Parse(Console.ReadLine());
        Fibonacci(N);

        Console.Write(F[0]);
        for(int i = 1; i < N; ++i){
            Console.Write($" {F[i]}");
        }
        Console.WriteLine("");
    }
}