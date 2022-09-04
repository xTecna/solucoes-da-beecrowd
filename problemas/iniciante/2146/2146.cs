using System;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada);
            Console.WriteLine(N - 1);
        }
    }
}