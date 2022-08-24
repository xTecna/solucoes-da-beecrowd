using System;

class URI
{
    static void Main(string[] args)
    {
        int N = int.Parse(Console.ReadLine());

        for (int i = 0; i < N; ++i)
        {
            string[] entrada = Console.ReadLine().Trim().Split(' ');

            if (entrada[0] == "Thor")
            {
                Console.WriteLine("Y");
            }
            else
            {
                Console.WriteLine("N");
            }
        }
    }
}