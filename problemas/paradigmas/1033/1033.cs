using System;
using System.Collections.Generic;
using System.Linq;

class Matriz {
    public int n;
    public int m;
    public int b;
    public int[,] M;

    public Matriz(int n, int m, int b){
        this.n = n;
        this.m = m;
        this.b = b;
        this.M = new int[this.n, this.m];
    }

    public static Matriz operator *(Matriz m1, Matriz m2){
        Matriz m3 = new Matriz(m1.m, m2.n, m1.b);

        for(int i = 0; i < m1.n; ++i){
            for(int j = 0; j < m2.m; ++j){
                for(int k = 0; k < m1.m; ++k){
                    m3.M[i, j] += m1.M[i, k] * m2.M[k, j];
                    m3.M[i, j] %= m1.b;
                }
            }
        }

        return m3;
    }
}

class URI {
    static Matriz potencia(Matriz a, int expoente){
        if(expoente == 1){
            return a;
        }else if(expoente % 2 == 1){
            return a * potencia(a, expoente - 1);
        }else{
            Matriz pot = potencia(a, expoente / 2);
            return pot * pot;
        }
    }

    static void Main(string[] args) {
        string entrada;

        int T = 0;
        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int n = numeros[0];
            int b = numeros[1];

            if(n == 0 && b == 0){
                break;
            }

            Matriz A = new Matriz(3, 3, b);
            A.M[0, 0] = 1;
            A.M[0, 1] = 1;
            A.M[0, 2] = 1;
            A.M[1, 0] = 1;
            A.M[1, 1] = 0;
            A.M[1, 2] = 0;
            A.M[2, 0] = 0;
            A.M[2, 1] = 0;
            A.M[2, 2] = 1;

            Matriz B = new Matriz(3, 1, b);
            B.M[0, 0] = 1;
            B.M[1, 0] = 1;
            B.M[2, 0] = 1;

            if(n < 2){
                Console.WriteLine($"Case {++T}: {n} {b} 1");
            }else{
                Matriz An1 = potencia(A, n - 1);
                Matriz R = An1 * B;

                Console.WriteLine($"Case {++T}: {n} {b} {R.M[0, 0]}");
            }
        }
    }
}