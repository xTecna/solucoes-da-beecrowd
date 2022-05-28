using System;
using System.Runtime;
using System.Linq;

class URI {
    static int N;
    static int M;
    static int[] mochila;
    static int[] blocos;

    static int calculaMochila(){
        mochila = new int[M + 1];
        for(int i = 1; i <= M; ++i){
            mochila[i] = -1;
        }
        mochila[0] = 0;

        for(int i = 0; i < N; ++i){
            int bloco = blocos[i];
            for(int j = bloco; j <= M; ++j){
                if(mochila[j - bloco] != -1){
                    if(mochila[j] == -1){
                        mochila[j] = mochila[j - bloco] + 1;
                    }else{
                        mochila[j] = Math.Min(mochila[j], mochila[j - bloco] + 1);
                    }
                }
            }
        }

        return mochila[M];
    }

    static void Main(string[] args) {
        int T = int.Parse(Console.ReadLine());
        for(int k = 0; k < T; ++k){
            int[] entrada = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToArray();
            N = entrada[0];
            M = entrada[1];

            blocos = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToArray();

            Console.WriteLine(calculaMochila());
        }
    }
}