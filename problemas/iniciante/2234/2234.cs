using System;

class URI
{
    static void Main(string[] args)
    {
        string[] entrada = Console.ReadLine().Trim().Split(' ');
        int H = int.Parse(entrada[0]);
        int P = int.Parse(entrada[1]);

        Console.WriteLine($"{(double)H / P:0.00}");
    }
}