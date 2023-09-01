using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine().Trim());
        string[] X = Console.ReadLine().Trim().Split(' ');

        int menor_valor = int.Parse(X[0]);
        int posicao = 0;
        for(int i = 1; i < N; ++i){
            int valor = int.Parse(X[i]);

            if(valor < menor_valor){
                menor_valor = valor;
                posicao = i;
            }
        }

        Console.WriteLine($"Menor valor: {menor_valor}");
        Console.WriteLine($"Posicao: {posicao}");
    }
}