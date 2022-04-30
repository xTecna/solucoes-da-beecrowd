using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            string[] numeros = entrada.Trim().Split(' ');
            int M = int.Parse(numeros[0]);
            int N = int.Parse(numeros[1]);

            if(M <= 0 || N <= 0){
                break;
            }

            if(M > N){
                int temp = M;
                M = N;
                N = temp;
            }

            int soma = 0;
            for(int i = M; i <= N; ++i){
                Console.Write($"{i} ");
                soma += i;
            }
            Console.WriteLine($"Sum={soma}");
        }
    }
}