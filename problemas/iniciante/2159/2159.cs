using System;
using System.Runtime;

class URI {
    static double limiteInferior(int n)
    {
        return n / Math.Log(n);
    }

    static double limiteSuperior(int n)
    {
        return 1.25506 * n / Math.Log(n);
    }

    static void Main(string[] args) {
        int n = int.Parse(Console.ReadLine());
        Console.WriteLine($"{limiteInferior(n):#.0} {limiteSuperior(n):#.0}");
    }
}