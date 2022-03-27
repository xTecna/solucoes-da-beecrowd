using System;

class URI {
    static void Main(string[] args) {
        const double PI = 3.14159;
        double R = double.Parse(Console.ReadLine());

        double volume = 4.0/3.0 * PI * R * R * R;

        Console.WriteLine($"VOLUME = {volume:0.000}");
    }
}