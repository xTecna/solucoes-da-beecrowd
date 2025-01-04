using System;
using System.Runtime;

class URI {
    static long somaPA(int a0, int n){
        a0 += 1 - (Math.Abs(a0) % 2);
        int an = a0 + (n - 1) * 2;

        return ((long)(a0 + an) * n)/2;
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine().Trim());
        for(int i = 0; i < N; ++i){
            string[] numeros = Console.ReadLine().Trim().Split(' ');
            int X = int.Parse(numeros[0]);
            int Y = int.Parse(numeros[1]);

            Console.WriteLine(somaPA(X, Y));
        }
    }
}