using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            double Vmax = 0;
            for(int i = 1; i <= N; ++i){
                List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                
                double V = (double)numeros[1]/numeros[0];
                if(V > Vmax){
                    Vmax = V;
                    Console.WriteLine(i);
                }
            }
        }
    }
}