using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        int pesoTotal = 0;
        double precoTotal = 0.0;
        int[] pesos = new int[N];
        for(int k = 0; k < N; ++k){
            double V = double.Parse(Console.ReadLine());
            string[] frutas = Console.ReadLine().Trim().Split(' ');

            pesos[k] = frutas.Length;
            pesoTotal += pesos[k];
            precoTotal += V;
        }

        for(int i = 1; i <= N; ++i){
            Console.WriteLine($"day {i}: {pesos[i - 1]} kg");
        }
        Console.WriteLine($"{((double)pesoTotal/N):N2} kg by day");
        Console.WriteLine($"R$ {(precoTotal/N):N2} by day");
    }
}