using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int paesDeQueijoVizinhos(int[,] matriz, int i, int j){
        return matriz[i - 1, j] + matriz[i + 1, j] + matriz[i, j - 1] + matriz[i, j + 1];
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int N = numeros[0];
            int M = numeros[1];

            int[,] matriz = new int[N + 2, M + 2];
            for(int i = 1; i <= N; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                for(int j = 1; j <= M; ++j){
                    matriz[i, j] = numeros[j - 1];
                }
            }

            for(int i = 1; i <= N; ++i){
                for(int j = 1; j <= M; ++j){
                    if(matriz[i, j] == 0){
                        Console.Write(paesDeQueijoVizinhos(matriz, i, j));
                    }else{
                        Console.Write(9);
                    }
                }
                Console.WriteLine("");
            }
        }
    }
}