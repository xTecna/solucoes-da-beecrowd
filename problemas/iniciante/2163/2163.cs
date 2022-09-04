using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int[,] mapa;

    static bool temSabre(int x, int y){
        for(int i = -1; i < 2; ++i){
            for(int j = -1; j < 2; ++j){
                if(i == 0 && j == 0){
                    continue;
                }

                if(mapa[x + i, y + j] != 7){
                    return false;
                }
            }
        }

        return mapa[x, y] == 42;
    }

    static void Main(string[] args) {
        List<int> dimensoes = Console.ReadLine().Trim().Split(' ').Select(z => int.Parse(z)).ToList();
        mapa = new int[dimensoes[0], dimensoes[1]];

        for(int i = 0; i < dimensoes[0]; ++i){
            List<int> entrada = Console.ReadLine().Trim().Split(' ').Select(z => int.Parse(z)).ToList();
            for(int j = 0; j < entrada.Count(); ++j){
                mapa[i, j] = entrada[j];
            }
        }

        int x = 0;
        int y = 0;
        for(int i = 1; i < dimensoes[0] - 1; ++i){
            for(int j = 1; j < dimensoes[1] - 1; ++j){
                if(temSabre(i, j)){
                    x = i + 1;
                    y = j + 1;
                    break;
                }
            }
        }

        Console.WriteLine($"{x} {y}");
    }
}