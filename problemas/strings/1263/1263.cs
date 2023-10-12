using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            string[] palavras = entrada.ToLower().Trim().Split(' ');

            int aliteracoes = 0;

            char letraAtual = palavras[0][0];
            int tamanhoAliteracao = 1;
            for(int i = 1; i < palavras.Length; ++i){
                if(palavras[i][0] != letraAtual){
                    if(tamanhoAliteracao > 1){
                        aliteracoes += 1;
                    }
                    letraAtual = palavras[i][0];
                    tamanhoAliteracao = 1;
                }else{
                    tamanhoAliteracao += 1;
                }
            }
            if(tamanhoAliteracao > 1){
                aliteracoes += 1;
            }

            Console.WriteLine(aliteracoes);
        }
    }
}