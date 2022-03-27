using System;
using System.Runtime;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
        double x1 = entrada[0];
        double y1 = entrada[1];
        
        entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
        double x2 = entrada[0];
        double y2 = entrada[1];
        
        double distancia = Math.Sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
        
        Console.WriteLine($"{distancia:0.0000}");
    }
}