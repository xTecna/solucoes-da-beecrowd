using System;

class URI {
    static void Main(string[] args) {
        double A = double.Parse(Console.ReadLine());
        double B = double.Parse(Console.ReadLine());

        double media = (3.5 * A + 7.5 * B) / 11;

        Console.WriteLine($"MEDIA = {media:0.00000}");
    }
}