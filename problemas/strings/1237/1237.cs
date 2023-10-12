using System;
using System.Runtime;

class URI {
    static int LCS(string A, string B) {
        int n = A.Length, m = B.Length;
        int[,] T = new int[n + 1, m + 1];

        for(int i = 0; i <= n; ++i){
            for(int j = 0; j <= m; ++j){
                T[i, j] = 0;
            }
        }

        int resultado = 0;
        for(int i = 1; i <= n; ++i){
            for(int j = 1; j <= m; ++j){
                if(A[i - 1] == B[j - 1]){
                    T[i, j] = T[i - 1, j - 1] + 1;
                }else{
                    T[i, j] = Math.max(T[i][j - 1], T[i - 1][j]);
                }
            }
        }

        return resultado;
    }

    static void Main(string[] args) {
        string A, B;

        while((A = Console.ReadLine()) != null){
            B = Console.ReadLine();
            Console.WriteLine(LCS(A, B));
        }
    }
}