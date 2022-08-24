using System;

class URI
{
    static void Main(string[] args)
    {
        string aluno = string.Empty;

        int n = int.Parse(Console.ReadLine());

        double maior = 0.0;
        for (int i = 0; i < n; ++i)
        {
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            double nota = double.Parse(entrada[1]);

            if (nota > maior)
            {
                maior = nota;
                aluno = entrada[0];
            }
        }

        if (maior < 8.0)
        {
            Console.WriteLine("Minimum note not reached");
        }
        else
        {
            Console.WriteLine(aluno);
        }
    }
}