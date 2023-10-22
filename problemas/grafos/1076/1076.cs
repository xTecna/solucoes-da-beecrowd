using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int T = int.Parse(Console.ReadLine());

        for(int k = 0; k < T; ++k){
            int X = int.Parse(Console.ReadLine());

            List<int> nm = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int n = nm[0];
            int m = nm[1];

            HashSet<Tuple<int, int>> arestas = new HashSet<Tuple<int, int>>();
            for(int i = 0; i < m; ++i){
                List<int> aresta = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                int u = aresta[0];
                int v = aresta[1];

                arestas.Add(new Tuple<int, int>(u, v));
                arestas.Add(new Tuple<int, int>(v, u));
            }

            Console.WriteLine(arestas.Count);
        }
    }
}