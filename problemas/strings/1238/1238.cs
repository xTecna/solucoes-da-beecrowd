using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            string[] palavras = Console.ReadLine().Trim().Split(' ');

            string A = palavras[0];
            string B = palavras[1];
            string resposta = "";

            int tam = A.Length < B.Length ? A.Length : B.Length;
            for(int j = 0; j < tam; ++j){
                resposta += A[j];
                resposta += B[j];
            }

            if(tam < A.Length){
                for(int j = tam; j < A.Length; ++j){
                    resposta += A[j];
                }
            }

            if(tam < B.Length){
                for(int j = tam; j < B.Length; ++j){
                    resposta += B[j];
                }
            }

            Console.WriteLine(resposta);
        }
    }
}