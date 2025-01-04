using System;

class URI {
    static bool valido(double x){
        return (x >= 0.0) && (x <= 10.0);
    }

    static bool novoCalculo(){
        string entrada;

        Console.WriteLine("novo calculo (1-sim 2-nao)");
        while((entrada = Console.ReadLine()) != null){
            switch(entrada){
                case "1":   return true;
                case "2":   return false;
                default:    break;
            }

            Console.WriteLine("novo calculo (1-sim 2-nao)");
        }

        return false;
    }

    static void Main(string[] args) {
        string entrada;

        double X = -1.0;
        while((entrada = Console.ReadLine()) != null){
            double Y = double.Parse(entrada);

            if(valido(Y)){
                if(X == -1.0){
                    X = Y;
                }else{
                    Console.WriteLine($"media = {((X + Y)/2):0.00}");
                    X = -1.0;

                    if(!novoCalculo()){
                        break;
                    }
                }
            }else{
                Console.WriteLine("nota invalida");
            }
        }
    }
}