using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
        double A = entrada[0];
        double B = entrada[1];
        double C = entrada[2];
        
        double delta = (B * B) - 4 * A * C;
        
        if(A != 0 && delta > -1){
            double R1 = (-B + Math.Sqrt(delta))/(2 * A);
            double R2 = (-B - Math.Sqrt(delta))/(2 * A);
            
            Console.WriteLine($"R1 = {R1:0.00000}");
            Console.WriteLine($"R2 = {R2:0.00000}");
        }else{
            Console.WriteLine("Impossivel calcular");
        }
    }
}