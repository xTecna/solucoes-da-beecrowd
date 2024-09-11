using System;

class URI {
    static void Main(string[] args) {
        double A = double.Parse(Console.ReadLine());
        double B = double.Parse(Console.ReadLine());
        double C = double.Parse(Console.ReadLine());

        Console.WriteLine($"MEDIA = {(2 * A + 3 * B + 5 * C)/10:0.0}");
    }
}