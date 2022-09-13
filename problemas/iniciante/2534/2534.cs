using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int comp(int a, int b){
        return b - a;
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            List<int> P = new List<int>();
            for(int i = 0; i < numeros[0]; ++i){
                P.Add(int.Parse(Console.ReadLine()));
            }

            P.Sort(comp);

            for(int i = 0; i < numeros[1]; ++i){
                int N = int.Parse(Console.ReadLine());
                Console.WriteLine(P[N - 1]);
            }
        }
    }
}