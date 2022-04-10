using System;

class URI {
    static void Main(string[] args) {
        int pares = 0;
        
        for(int i = 0; i < 5; ++i){
            int numero = int.Parse(Console.ReadLine());
            
            if(numero % 2 == 0){
                ++pares;
            }
        }
        
        Console.WriteLine($"{pares} valores pares");
    }
}