using System;

class URI
{
    static void Main(string[] args)
    {
        string T = Console.ReadLine().Trim();
        string[] entrada = Console.ReadLine().Trim().Split(' ');

        int corretos = 0;
        for (int i = 0; i < 5; ++i)
        {
            if (entrada[i] == T)
            {
                ++corretos;
            }
        }

        Console.WriteLine(corretos);
    }
}