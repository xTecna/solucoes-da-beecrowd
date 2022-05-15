using System;

class URI {
    static long[] F;

    static long Fibonacci(int n){
        if(F[n] == -1){
            F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
        }
        return F[n];
    }

    static void Main(string[] args) {
        F = new long[61];
        F[0] = 0;
        F[1] = 1;
        for(int i = 2; i < 61; ++i){
            F[i] = -1;
        }

        int T = int.Parse(Console.ReadLine());
        for(int i = 0; i < T; ++i){
            int N = int.Parse(Console.ReadLine());

            Console.WriteLine($"Fib({N}) = {Fibonacci(N)}");
        }
    }
}