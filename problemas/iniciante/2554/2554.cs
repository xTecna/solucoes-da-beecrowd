using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int N = numeros[0];
            int D = numeros[1];

            string melhorData = null;
            for(int i = 0; i < D; ++i){
                int pessoas = 0;
                List<string> dados = Console.ReadLine().Trim().Split(' ').ToList();
                for(int j = 1; j <= N; ++j){
                    pessoas += int.Parse(dados[j]);
                }

                if(pessoas == N && melhorData == null){
                    melhorData = dados[0];
                }
            }

            if(melhorData == null){
                Console.WriteLine("Pizza antes de FdI");
            }else{
                Console.WriteLine(melhorData);
            }
        }
    }
}