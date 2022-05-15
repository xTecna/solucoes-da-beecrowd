using System;
using System.Collections.Generic;

class URI {
    static bool[] C;
    static List<int> primos;
    static int NMAX = 10001;

    static void Crivo(){
        primos = new List<int>();
        C = new bool[NMAX];

        C[0] = false;
        C[1] = false;
        C[2] = true;
        primos.Add(2);
        for(int i = 4; i < NMAX; i += 2){
            C[i] = false;
        }
        for(int i = 3; i < NMAX; i += 2){
            C[i] = true;
        }

        for(int i = 3; i < NMAX; i += 2){
            if(C[i]){
                primos.Add(i);
                for(int j = 3 * i; j < NMAX; j += 2 * i){
                    C[j] = false;
                }
            }
        }
    }

    static long potencia(int numero, int expoente){
        if(expoente == 0){
            return 1;
        }else if(expoente % 2 == 1){
            return numero * potencia(numero, expoente - 1);
        }else{
            long pot = potencia(numero, expoente / 2);
            return pot * pot;
        }
    }

    static long sumDiv(int N){
        int i_primos = 0;
        int primo = primos[i_primos];
        long resposta = 1;

        while(primo * primo <= N){
            int pot = 0;

            while(N % primo == 0){
                N /= primo;
                ++pot;
            }

            resposta *= (potencia(primo, pot + 1) - 1) / (primo - 1);
            primo = primos[++i_primos];
        }

        if(N != 1){
            resposta *= (potencia(N, 2) - 1)/(N - 1);
        }

        return resposta;
    }

    static void Main(string[] args) {
        Crivo();

        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            int X = int.Parse(Console.ReadLine());

            if(X == sumDiv(X) - X){
                Console.WriteLine($"{X} eh perfeito");
            }else{
                Console.WriteLine($"{X} nao eh perfeito");
            }
        }
    }
}