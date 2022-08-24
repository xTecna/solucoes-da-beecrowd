using System;

class URI
{
    static void Main(string[] args)
    {
        double[] precos = new double[] { 1.5, 2.5, 3.5, 4.5, 5.5 };

        int N = int.Parse(Console.ReadLine());
        double total = 0.0;
        for (int i = 0; i < N; ++i)
        {
            string[] entrada = Console.ReadLine().Trim().Split(' ');

            total += int.Parse(entrada[1]) * precos[int.Parse(entrada[0]) - 1001];
        }

        Console.WriteLine($"{total:0.00}");
    }
}