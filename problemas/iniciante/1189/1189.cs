using System;

class URI {
    static void Main(string[] args) {
        string O = Console.ReadLine().Trim();

        int contador = 0;
        double soma = 0.0;
        for(int i = 0; i < 12; ++i){
            for(int j = 0; j < 12; ++j){
                double numero = double.Parse(Console.ReadLine());

                if((j < 5) && ((i < 6 && j < i) || (i > 5 && j < 11 - i))){
                    soma += numero;
                    ++contador;
                }
            }
        }

        Console.WriteLine($"{(O == "S" ? soma : soma/contador):0.0}");
    }
}