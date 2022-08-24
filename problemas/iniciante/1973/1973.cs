using System;
using System.Linq;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        List<int> ovelhas = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        long naoRoubados = 0;
        for(int k = 0; k < N; ++k){
            naoRoubados += ovelhas[k];
        }
        
        int i = 0, estrelas = 0;
        HashSet<int> visitados = new HashSet<int>();
        while(-1 < i && i < N){
            if(!visitados.Contains(i)){
                visitados.Add(i);
                ++estrelas;
            }

            long antes = ovelhas[i];
            if(ovelhas[i] > 0){
                --ovelhas[i];
                --naoRoubados;
            }

            if(antes % 2 == 1)
                ++i;
            else
                --i;
        }

        Console.WriteLine($"{estrelas} {naoRoubados}");
    }
}