using System;

class URI {
    static void Main(string[] args) {
        string entrada;
        double PI = 3.14;

        while((entrada = Console.ReadLine()) != null){
            double V = double.Parse(entrada);
            double D = double.Parse(Console.ReadLine());

            D /= 2;

            double area = PI * D * D;
            double altura = V / area;

            Console.WriteLine($"ALTURA = {altura:0.00}");
            Console.WriteLine($"AREA = {area:0.00}");
        }
    }
}