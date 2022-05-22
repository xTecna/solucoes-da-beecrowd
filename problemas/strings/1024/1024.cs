using System;

class URI
{
    static void Main(string[] args)
    {
        int N = int.Parse(Console.ReadLine());
        for (int i = 0; i < N; ++i)
        {
            char[] texto = Console.ReadLine().ToCharArray();

            for (int j = 0; j < texto.Length; ++j)
            {
                if (char.IsLetter(texto[j]))
                {
                    texto[j] = (char)((int)texto[j] + 3);
                }
            }
            for (int j = 0; j < texto.Length / 2; ++j)
            {
                char temp = texto[j];
                texto[j] = texto[texto.Length - 1 - j];
                texto[texto.Length - 1 - j] = temp;
            }
            for (int j = texto.Length / 2; j < texto.Length; ++j)
            {
                texto[j] = (char)((int)texto[j] - 1);
            }

            Console.WriteLine(string.Join("", texto));
        }
    }
}