using System;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada);

            for (int i = 0; i < N; ++i)
            {
                for (int j = 0; j < N; ++j)
                {
                    if (i == N / 2 && j == N / 2)
                    {
                        Console.Write(4);
                    }
                    else if (N / 3 <= i && i < N - N / 3 && N / 3 <= j && j < N - N / 3)
                    {
                        Console.Write(1);
                    }
                    else if (i == j)
                    {
                        Console.Write(2);
                    }
                    else if (i == N - 1 - j)
                    {
                        Console.Write(3);
                    }
                    else
                    {
                        Console.Write(0);
                    }
                }
                Console.WriteLine("");
            }
            Console.WriteLine("");
        }
    }
}