using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        HashSet<int> figurinhas = new HashSet<int>();
        
        int resposta = N;
        int M = int.Parse(Console.ReadLine());
        for(int i = 0; i < M; ++i){
            int X = int.Parse(Console.ReadLine());
            figurinhas.Add(X);
        }

        Console.WriteLine(N - figurinhas.Count);
    }
}