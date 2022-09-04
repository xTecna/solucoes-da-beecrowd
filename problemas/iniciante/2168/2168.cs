using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int[,] mapa;

    static bool segura(int x, int y){
        return mapa[x, y] + mapa[x + 1, y] + mapa[x, y + 1] + mapa[x + 1, y + 1] >= 2;
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        mapa = new int[N + 1, N + 1];
        for(int i = 0; i < N + 1; ++i){
            List<int> entrada = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            for(int j = 0; j < N + 1; ++j){
                mapa[i, j] = entrada[j];
            }
        }

        for(int i = 0; i < N; ++i){
            for(int j = 0; j < N; ++j){
                Console.Write(segura(i, j) ? 'S' : 'U');
            }
            Console.WriteLine("");
        }
    }
}