using System;

class URI
{
    static int MDC(int a, int b)
    {
        return b == 0 ? a : MDC(b, a % b);
    }

    static void Main(string[] args)
    {
        int N = int.Parse(Console.ReadLine());
        for (int i = 0; i < N; ++i)
        {
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            Console.WriteLine(MDC(int.Parse(entrada[0]), int.Parse(entrada[1])));
        }
    }
}