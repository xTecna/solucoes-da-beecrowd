using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> entradas = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        int N = entradas[0];
        int M = entradas[1];

        for(int i = 0; i < M; ++i){
            string acao = Console.ReadLine();

            if(acao == "fechou"){
                ++N;
            }else{
                --N;
            }
        }

        Console.WriteLine(N);
    }
}