using System;

class URI
{
    static int converte(string linha)
    {
        int soma = 0, n = linha.Length;

        for (int i = 0; i < n; ++i)
        {
            if (linha[i] == '*')
            {
                soma += 1 << (n - i - 1);
            }
        }

        return soma;
    }

    static void Main(string[] args)
    {
        int soma = 0;
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            if (entrada == "caw caw")
            {
                Console.WriteLine(soma);
                soma = 0;
            }
            else
            {
                soma += converte(entrada);
            }
        }
    }
}