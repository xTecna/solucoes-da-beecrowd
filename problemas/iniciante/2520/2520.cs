using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI {
    static int distanciaManhattan(int x1, int y1, int x2, int y2){
        return Math.Abs(x1 - x2) + Math.Abs(y1 - y2);
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int N = numeros[0];
            int M = numeros[1];

            int x1 = 0, y1 = 0, x2 = 0, y2 = 0;
            for(int i = 0; i < N; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                for(int j = 0; j < M; ++j){
                    if(numeros[j] == 1){
                        x1 = i;
                        y1 = j;
                    }else if(numeros[j] == 2){
                        x2 = i;
                        y2 = j;
                    }
                }
            }

            Console.WriteLine(distanciaManhattan(x1, y1, x2, y2));
        }
    }
}