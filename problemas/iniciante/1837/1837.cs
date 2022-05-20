using System;
using System.Linq;
using System.Collections.Generic;

class URI
{
    static void calcula(int x, int y)
    {
        int quociente;

        if (x > 0)
            if (y > 0)
                quociente = x / y;
            else
                quociente = (int)Math.Ceiling((double)x / y);
        else if (y > 0)
            quociente = (int)Math.Floor((double)x / y);
        else
            quociente = (int)Math.Ceiling((double)x / y);

        Console.WriteLine($"{quociente} {x - (y * quociente)}");
    }

    static void Main(string[] args)
    {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        calcula(entrada[0], entrada[1]);
    }
}