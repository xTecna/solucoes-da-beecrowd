using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        int N = int.Parse(Console.ReadLine());
        for (int i = 0; i < N; ++i)
        {
            long resposta = 1;

            string senha = Console.ReadLine();
            for (int j = 0; j < senha.Length; ++j)
            {
                char letra = char.ToUpper(senha[j]);
                if (letra == 'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'S')
                {
                    resposta *= 3;
                }
                else
                {
                    resposta *= 2;
                }
            }

            Console.WriteLine(resposta);
        }
    }
}