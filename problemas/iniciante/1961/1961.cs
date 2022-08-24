using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI
{
    static void Main(string[] args)
    {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        List<int> canos = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

        bool resposta = true;
        for (int i = 1; i < entrada[1]; ++i)
        {
            resposta &= (Math.Abs(canos[i] - canos[i - 1]) <= entrada[0]);
        }

        Console.WriteLine(resposta ? "YOU WIN" : "GAME OVER");
    }
}