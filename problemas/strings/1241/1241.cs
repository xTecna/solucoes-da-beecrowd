using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string[] numeros = Console.ReadLine().Trim().Split(' ');

            string A = numeros[0];
            string B = numeros[1];

            if(B.Length > A.Length){
                Console.WriteLine("nao encaixa");
            }else{
                A = A.Substring(A.Length - B.Length);
                if(A == B){
                    Console.WriteLine("encaixa");
                }else{
                    Console.WriteLine("nao encaixa");
                }
            }
        }
    }
}