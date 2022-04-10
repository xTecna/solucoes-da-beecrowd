using System;

class URI {
    static void Main(string[] args) {
        int numero, maior = int.MinValue, posicao = 1;

        for(int i = 0; i < 100; ++i){
            numero = int.Parse(Console.ReadLine());

            if(numero > maior){
                maior = numero;
                posicao = i + 1;
            }
        }

        Console.WriteLine(maior);
        Console.WriteLine(posicao);
    }
}