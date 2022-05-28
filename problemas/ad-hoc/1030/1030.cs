using System;

class URI
{
    static int sobrevivente(int n, int k)
    {
        if (n == 1)
        {
            return 0;
        }
        return (sobrevivente(n - 1, k) + k) % n;
    }

    static void Main(string[] args)
    {
        int NC = int.Parse(Console.ReadLine());
        for (int i = 1; i <= NC; ++i)
        {
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            Console.WriteLine($"Case {i}: {sobrevivente(int.Parse(entrada[0]), int.Parse(entrada[1])) + 1}");
        }
    }
}