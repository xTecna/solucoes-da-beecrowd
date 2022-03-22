using System;

class URI {
    static void Main(string[] args) {
        double A = double.Parse(Console.ReadLine());
        double B = double.Parse(Console.ReadLine());
        double C = double.Parse(Console.ReadLine());

        double media = (2 * A + 3 * B + 5 * C)/10;

        Console.WriteLine($"MEDIA = {media:0.0}");
    }
}