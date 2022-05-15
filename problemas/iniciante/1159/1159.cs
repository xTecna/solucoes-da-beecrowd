using System;
using System.Runtime;

class URI {
    static int somaPA(int a0){
        a0 += (Math.Abs(a0) % 2);
        int an = a0 + 8;
        int n = 5;

        return ((a0 + an) * n)/2;
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int X = int.Parse(entrada);

            if(X == 0){
                break;
            }

            Console.WriteLine(somaPA(X));
        }
    }
}