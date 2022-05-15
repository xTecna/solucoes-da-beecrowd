using System;

class URI {
    static void Main(string[] args) {
        string entrada;
        int idade, soma, contador;

        soma = 0;
        contador = 0;
        while((entrada = Console.ReadLine()) != null){
            idade = int.Parse(entrada);

            if(idade < 0){
                break;
            }

            soma += idade;
            ++contador;
        }

        Console.WriteLine($"{(double)soma/contador:0.00}");
    }
}