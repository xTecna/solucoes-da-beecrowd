using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
        double A = entrada[0];
        double B = entrada[1];
        double C = entrada[2];
        
        if(A < B + C && B < A + C && C < A + B)
            Console.WriteLine($"Perimetro = {A + B + C:0.0}");
        else
            Console.WriteLine($"Area = {(A + B)/2.0 * C:0.0}");
    }
}