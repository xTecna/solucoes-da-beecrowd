using System;
using System.Runtime;

class URI {
    static double potencia(double basePotencia, int expoente) {
        if (expoente == 1)
            return basePotencia;
        if (expoente % 2 == 1)
            return basePotencia * potencia(basePotencia, expoente - 1);

        double p = potencia(basePotencia, expoente / 2);
        return p * p;
    }

    static double Fibonacci(int n){
        return (potencia((1 + Math.Sqrt(5)) / 2, n) - potencia((1 - Math.Sqrt(5)) / 2, n)) / Math.Sqrt(5);
    }

    static void Main(string[] args) {
        int n = int.Parse(Console.ReadLine());
        Console.WriteLine($"{Fibonacci(n):#.0}");
    }
}