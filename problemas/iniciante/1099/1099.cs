using System;
using System.Runtime;

class URI {
    static int numeroImpares(int X, int Y){
        return (Y - X) / 2 + 1;
    }

    static int somaPA(int a0, int an){
        return (a0 + an) * numeroImpares(a0, an) / 2;
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            int X = int.Parse(entrada[0]);
            int Y = int.Parse(entrada[1]);

            if(X > Y){
                int temp = X;
                X = Y;
                Y = temp;
            }

            X += (Math.Abs(X) % 2) + 1;
            Y -= (Math.Abs(Y) % 2) + 1;

            Console.WriteLine(X > Y ? 0 : somaPA(X, Y));
        }
    }
}