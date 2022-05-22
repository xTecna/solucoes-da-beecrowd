using System;

class URI
{
    static string converte(int digito, string um, string cinco, string dez)
    {
        if (digito == 9)
        {
            return um + dez;
        }
        else if (digito == 4)
        {
            return um + cinco;
        }

        string resposta = "";
        if (digito > 4)
        {
            resposta = cinco;
            digito -= 5;
        }
        for (int i = 0; i < digito; ++i)
        {
            resposta += um;
        }

        return resposta;
    }

    static void Main(string[] args)
    {
        int N = int.Parse(Console.ReadLine());

        Console.Write(converte(N / 100, "C", "D", "M"));
        N %= 100;
        Console.Write(converte(N / 10, "X", "L", "C"));
        N %= 10;
        Console.Write(converte(N, "I", "V", "X"));
        Console.WriteLine("");
    }
}