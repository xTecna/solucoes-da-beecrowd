using System;
using System.Runtime;

class URI
{
    static int digitos(int numero)
    {
        return (int)Math.Floor(Math.Log10(numero)) + 1;
    }

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

            int limite = digitos(1 << (2 * N - 2));

            for (int i = 0; i < N; ++i)
            {
                Console.Write((1 << i).ToString().PadLeft(limite));
                for (int j = 1; j < N; ++j)
                {
                    Console.Write($" {(1 << (i + j)).ToString().PadLeft(limite)}");
                }
                Console.WriteLine("");
            }
            Console.WriteLine("");
        }
    }
}