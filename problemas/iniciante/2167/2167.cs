using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        List<int> R = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        int resposta = 0;
        for(int i = 1; i < N; ++i){
            if(R[i] < R[i - 1]){
                resposta = i + 1;
                break;
            }
        }

        Console.WriteLine(resposta);
    }
}