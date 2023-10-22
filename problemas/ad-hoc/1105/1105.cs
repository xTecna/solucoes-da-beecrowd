using System;
using System.Collections.Generic;
using System.Linq;

class URI {    
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            List<int> BN = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int B = BN[0];
            int N = BN[1];

            if(B == 0 && N == 0){
                break;
            }

            List<int> saldos = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            saldos.Insert(0, 0);
            for(int i = 0; i < N; ++i){
                List<int> DCV = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                int D = DCV[0];
                int C = DCV[1];
                int V = DCV[2];

                saldos[D] -= V;
                saldos[C] += V;
            }

            bool possivel = true;
            for(int i = 1; i <= B; ++i){
                if(saldos[i] < 0){
                    possivel = false;
                    break;
                }
            }

            if(possivel){
                Console.WriteLine("S");
            }else{
                Console.WriteLine("N");
            }
        }
    }
}