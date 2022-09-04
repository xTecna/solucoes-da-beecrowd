using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        double resposta;
        if(N == 0){
            resposta = 3.0;
        }else{
            resposta = 6.0;
            for(int i = 0; i < N - 1; ++i){
                resposta = 6.0 + 1.0 / resposta;
            }
            resposta = 3.0 + 1.0 / resposta;
        }

        Console.WriteLine($"{resposta:N10}");
    }
}