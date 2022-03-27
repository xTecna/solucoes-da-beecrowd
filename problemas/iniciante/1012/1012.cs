using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        const double PI = 3.14159;
        List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
        double A = entrada[0];
        double B = entrada[1];
        double C = entrada[2];
        
        double areaTriangulo = (A * C)/2;
        double areaCirculo = PI * C * C;
        double areaTrapezio = (A + B)/2 * C;
        double areaQuadrado = B * B;
        double areaRetangulo = A * B;
        
        Console.WriteLine($"TRIANGULO: {areaTriangulo:0.000}");
        Console.WriteLine($"CIRCULO: {areaCirculo:0.000}");
        Console.WriteLine($"TRAPEZIO: {areaTrapezio:0.000}");
        Console.WriteLine($"QUADRADO: {areaQuadrado:0.000}");
        Console.WriteLine($"RETANGULO: {areaRetangulo:0.000}");
    }
}