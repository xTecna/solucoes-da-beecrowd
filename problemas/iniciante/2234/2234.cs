using System;

class URI
{
    static void Main(string[] args)
    {
        int H, P;

        string[] entrada = Console.ReadLine().Trim().Split(' ');
        H = int.Parse(entrada[0]);
        P = int.Parse(entrada[1]);

        Console.WriteLine($"{(double)H / P:0.00}");
    }
}