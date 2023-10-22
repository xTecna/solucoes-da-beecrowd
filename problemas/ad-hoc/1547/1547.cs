using System;
using System.Collections.Generic;
using System.Linq;

class URI {    
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int k = 0; k < N; ++k){
            List<int> QTS = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int QT = QTS[0];
            int S = QTS[1];

            List<int> palpites = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int melhor_palpite = 0;
            int melhor_aproximacao = Math.Abs(palpites[0] - S);
            for(int i = 1; i < QT; ++i){
                int aproximacao = Math.Abs(palpites[i] - S);
                
                if(aproximacao < melhor_aproximacao){
                    melhor_palpite = i;
                    melhor_aproximacao = aproximacao;
                }
            }

            Console.WriteLine(melhor_palpite + 1);
        }
    }
}