using System;

class URI
{
    static void Main(string[] args)
    {
        int t = int.Parse(Console.ReadLine());

        int vitorias = 0;
        for (int i = 0; i < t; ++i)
        {
            int n = int.Parse(Console.ReadLine());
            if (n != 1)
            {
                vitorias += 1;
            }
        }

        Console.WriteLine(vitorias);
    }
}
