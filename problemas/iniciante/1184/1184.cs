using System;

class URI {
    static void Main(string[] args) {
        string O = Console.ReadLine();

        int contador = 0;
        double soma = 0.0;
        for(int i = 0; i < 12; ++i){
            for(int j = 0; j < 12; ++j){
                double numero = double.Parse(Console.ReadLine());

                if(i > j){
                    soma += numero;
                    ++contador;
                }
            }
        }

        if(O == "S"){
            Console.WriteLine($"{soma:0.0}");
        }else{
            Console.WriteLine($"{soma/contador:0.0}");
        }
    }
}