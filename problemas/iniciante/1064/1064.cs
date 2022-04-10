using System;

class URI {
    static void Main(string[] args) {
        int contador = 0;
        double numero, media = 0.0;
        
        for(int i = 0; i < 6; ++i){
            numero = double.Parse(Console.ReadLine());
            
            if(numero > 0.0){
                ++contador;
                media += numero;
            }
        }
        
        if(contador > 0){
            media /= contador;
        }
        
        Console.WriteLine($"{contador} valores positivos");
        Console.WriteLine($"{media:0.0}");
    }
}