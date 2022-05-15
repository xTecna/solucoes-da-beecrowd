using System;

class URI
{
    static void Main(string[] args)
    {
        int X = int.Parse(Console.ReadLine());

        int Z = 0;
        string entrada;
        while ((entrada = Console.ReadLine()) != null)
        {
            Z = int.Parse(entrada);

            if (Z > X)
            {
                break;
            }
        }

        int resposta = 1, soma = X;
        while (soma <= Z)
        {
            soma += X + resposta;
            ++resposta;
        }

        Console.WriteLine(resposta);
    }
}