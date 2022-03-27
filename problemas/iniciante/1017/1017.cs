using System;

class URI {
    static void Main(string[] args) {
        int tempo = int.Parse(Console.ReadLine());
        int velocidade = int.Parse(Console.ReadLine());
        
        int distancia = tempo * velocidade;
        double litros = distancia / 12.0;
        
        Console.WriteLine($"{litros:0.000}");
    }
}