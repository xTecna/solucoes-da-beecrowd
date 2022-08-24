using System;

class URI
{
    static void Main(string[] args)
    {
        int QT = int.Parse(Console.ReadLine());
        for (int i = 0; i < QT; ++i)
        {
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            string[] numeros = Console.ReadLine().Trim().Split(' ');

            string jogadaGanha = (int.Parse(numeros[0]) + int.Parse(numeros[1])) % 2 == 1 ? "IMPAR" : "PAR";

            if (entrada[1] == jogadaGanha)
            {
                Console.WriteLine(entrada[0]);
            }
            else
            {
                Console.WriteLine(entrada[2]);
            }
        }
    }
}