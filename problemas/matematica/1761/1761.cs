using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        double pi = 3.141592654;
        while((entrada = Console.ReadLine()) != null)
        {
            List<double> numeros = entrada.Trim().Split(' ').Select(x => double.Parse(x)).ToList();
            double a = numeros[0];
            double b = numeros[1];
            double c = numeros[2];

            Console.WriteLine($"{(5.0 * (Math.Tan(a * pi / 180.0) * b + c)):0.00}");
        }
    }
}