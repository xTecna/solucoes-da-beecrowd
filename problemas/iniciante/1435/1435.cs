using System;
using System.Runtime;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada);

            if (N == 0)
            {
                break;
            }

            for (int i = 0; i < N; ++i)
            {
                Console.Write((1).ToString().PadLeft(3));
                for (int j = 1; j < N; ++j)
                {
                    Console.Write((Math.Min(Math.Min(i, N - 1 - i), Math.Min(j, N - 1 - j)) + 1).ToString().PadLeft(4));
                }
                Console.WriteLine("");
            }
            Console.WriteLine("");
        }
    }
}