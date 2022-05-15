using System;

class URI {
    static int somaPA(int a0, int n){
        int an = a0 + n - 1;

        return (a0 + an) * n / 2;
    }

    static void Main(string[] args) {
        string[] entrada = Console.ReadLine().Trim().Split(' ');
        int A = int.Parse(entrada[0]);
        
        int N = 0;
        for (int i = 1; i < entrada.Length; ++i){
            N = int.Parse(entrada[i]);

            if(N > 0){
                break;
            }
        }

        Console.WriteLine(somaPA(A, N));
    }
}