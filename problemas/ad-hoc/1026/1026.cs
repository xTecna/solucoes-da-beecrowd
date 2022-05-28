using System;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            long a = long.Parse(entrada.Trim().Split(' ')[0]);
            long b = long.Parse(entrada.Trim().Split(' ')[1]);

            Console.WriteLine(a ^ b);
        }
    }
}