using System;

class URI
{
    static void Main(string[] args)
    {
        int N = int.Parse(Console.ReadLine());
        for (int i = 0; i < N; ++i)
        {
            int T = int.Parse(Console.ReadLine());

            T = 2015 - T;

            if (T <= 0)
            {
                Console.WriteLine($"{1 - T} A.C.");
            }
            else
            {
                Console.WriteLine($"{T} D.C.");
            }
        }
    }
}