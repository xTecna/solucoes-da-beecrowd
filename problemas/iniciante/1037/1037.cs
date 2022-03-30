using System;

class URI {
    static void Main(string[] args) {
        double numero = double.Parse(Console.ReadLine());
        
        if(0 <= numero && numero <= 25){
            Console.WriteLine("Intervalo [0,25]");
        }else if(25 < numero && numero <= 50){
            Console.WriteLine("Intervalo (25,50]");
        }else if(50 < numero && numero <= 75){
            Console.WriteLine("Intervalo (50,75]");
        }else if(75 < numero && numero <= 100){
            Console.WriteLine("Intervalo (75,100]");
        }else{
            Console.WriteLine("Fora de intervalo");
        }
    }
}