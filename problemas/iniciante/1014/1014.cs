using System;

class URI {
    static void Main(string[] args) {
        int X = int.Parse(Console.ReadLine());
        double Y = double.Parse(Console.ReadLine());
        
        double consumo = X/Y;
        
        Console.WriteLine($"{consumo:0.000} km/l");
    }
}