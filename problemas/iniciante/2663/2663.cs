using System;
using System.Collections.Generic;

class URI {
    static int comp(int a, int b){
        return b - a;
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        int K = int.Parse(Console.ReadLine());

        List<int> pontos = new List<int>();
        for(int i = 0; i < N; ++i){
            pontos.Add(int.Parse(Console.ReadLine()));
        }
        pontos.Sort(comp);

        int resposta = K;
        while(resposta < N && pontos[resposta] == pontos[K - 1]){
            ++resposta;
        }

        Console.WriteLine(resposta);
    }
}