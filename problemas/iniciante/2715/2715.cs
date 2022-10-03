using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            List<long> somas = new List<long>();
            while(somas.Count < N){
                String[] numeros = Console.ReadLine().Trim().Split(' ');
                for(int i = 0; i < numeros.Length; ++i){
                    somas.Add(int.Parse(numeros[i]));
                }
            }

            for(int i = 1; i < somas.Count; ++i){
                somas[i] += somas[i - 1];
            }

            int inicio = 0, fim = N;
            long resposta = somas[N - 1];
            while(inicio < fim){
                int meio = (inicio + fim)/2;

                long rangel = somas[meio];
                long gugu = somas[N - 1] - rangel;
                resposta = Math.Min(resposta, Math.Abs(rangel - gugu));

                if(rangel == gugu){
                    break;
                }else if(rangel < gugu){
                    inicio = meio + 1;
                }else{
                    fim = meio;
                }
            }

            Console.WriteLine(resposta);
        }
    }
}