using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI {
    static bool soma(int[] expressao){
        return expressao[0] + expressao[1] == expressao[2];
    }

    static bool subtracao(int[] expressao){
        return expressao[0] - expressao[1] == expressao[2];
    }

    static bool multiplicacao(int[] expressao){
        return expressao[0] * expressao[1] == expressao[2];
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int T = int.Parse(entrada);

            List<string> errados = new List<string>();
            List<int[]> expressoes = new List<int[]>();
            for(int i = 0; i < T; ++i){
                String[] numeros = Console.ReadLine().Trim().Split(' ');
                String[] YZ = numeros[1].Split('=');
                expressoes.Add(new int[3] {int.Parse(numeros[0]), int.Parse(YZ[0]), int.Parse(YZ[1])});
            }

            for(int i = 0; i < T; ++i){
                String[] jogada = Console.ReadLine().Trim().Split(' ');
                int E = int.Parse(jogada[1]);

                switch(jogada[2]){
                    case "+":   if(!soma(expressoes[E - 1])){
                                    errados.Add(jogada[0]);
                                }
                                break;
                    case "-":   if(!subtracao(expressoes[E - 1])){
                                    errados.Add(jogada[0]);
                                }
                                break;
                    case "*":   if(!multiplicacao(expressoes[E - 1])){
                                    errados.Add(jogada[0]);
                                }
                                break;
                    case "I":   if(soma(expressoes[E - 1]) || subtracao(expressoes[E - 1]) || multiplicacao(expressoes[E - 1])){
                                    errados.Add(jogada[0]);
                                }
                                break;
                }
            }

            if(errados.Count() == 0){
                Console.WriteLine("You Shall All Pass!");
            }else if(errados.Count() == T){
                Console.WriteLine("None Shall Pass!");
            }else{
                errados.Sort(StringComparer.Ordinal);
                Console.WriteLine(string.Join(" ", errados));
            }
        }
    }
}