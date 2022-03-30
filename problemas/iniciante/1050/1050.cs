using System;

class URI {
    static void Main(string[] args) {
        int DDD = int.Parse(Console.ReadLine());
        
        switch(DDD){
            case 61:    Console.WriteLine("Brasilia");
                        break;
            case 71:    Console.WriteLine("Salvador");
                        break;
            case 11:    Console.WriteLine("Sao Paulo");
                        break;
            case 21:    Console.WriteLine("Rio de Janeiro");
                        break;
            case 32:    Console.WriteLine("Juiz de Fora");
                        break;
            case 19:    Console.WriteLine("Campinas");
                        break;
            case 27:    Console.WriteLine("Vitoria");
                        break;
            case 31:    Console.WriteLine("Belo Horizonte");
                        break;
            default:    Console.WriteLine("DDD nao cadastrado");
                        break;
        }
    }
}