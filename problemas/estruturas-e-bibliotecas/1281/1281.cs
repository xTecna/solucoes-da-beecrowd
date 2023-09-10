using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        
        for(int k = 0; k < N; ++k){
            int M = int.Parse(Console.ReadLine());
            Dictionary<string, double> precos = new Dictionary<string, double>();
            for(int i = 0; i < M; ++i){
                string[] entrada = Console.ReadLine().Trim().Split(' ');
                precos.Add(entrada[0], double.Parse(entrada[1]));
            }
            
            double total = 0.0;
            int P = int.Parse(Console.ReadLine());
            for(int i = 0; i < P; ++i){
                string[] entrada = Console.ReadLine().Trim().Split(' ');
                total += precos[entrada[0]] * int.Parse(entrada[1]);
            }
            
            Console.WriteLine($"R$ {total:0.00}");
        }
    }
}