using System;

class URI
{
    static void Main(string[] args)
    {
        int T = int.Parse(Console.ReadLine());

        for (int i = 0; i < T; ++i)
        {
            int N = int.Parse(Console.ReadLine());
            Console.WriteLine((1 << N) - 1);
        }
        
    }
}