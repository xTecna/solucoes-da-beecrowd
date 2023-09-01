using System;

class URI {
    static long[] F;

    static long Fatorial(int n) {
        if (F[n] == 0)
            F[n] = n * Fatorial(n - 1);
        return F[n];
    }

    static void Main(string[] args) {
        string entrada;

        F = new long[21];
        F[0] = 1;

        while((entrada = Console.ReadLine()) != null)
        {
            string[] partes = entrada.Trim().Split(' ');
            int M = int.Parse(partes[0]);
            int N = int.Parse(partes[1]);

            Console.WriteLine(Fatorial(M) + Fatorial(N));
        }
    }
}