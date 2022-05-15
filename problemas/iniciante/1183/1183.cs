using System;

class URI {
    static void Main(string[] args) {
        string O = Console.ReadLine();
        double[,] M = new double[12, 12];

        int contador = 0;
        double soma = 0.0;
        for(int i = 0; i < 12; ++i){
            for(int j = 0; j < 12; ++j){
                M[i, j] = double.Parse(Console.ReadLine());

                if(j > i){
                    soma += M[i, j];
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