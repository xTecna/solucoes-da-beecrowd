using System;
using System.Runtime;
using System.Linq;

class URI
{
    static double dist(int x1, int y1, int x2, int y2)
    {
        return Math.Sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
    }

    static void Main(string[] args)
    {
        while (true)
        {
            int[] numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToArray();
            int L = numeros[0];
            int C = numeros[1];
            int R1 = numeros[2];
            int R2 = numeros[3];
            if (L == 0 && C == 0 && R1 == 0 && R2 == 0)
            {
                break;
            }

            int x1 = R1;
            int y1 = R1;
            int x2 = L - R2;
            int y2 = C - R2;

            double distancia = dist(x1, y1, x2, y2);
            if (L < 2 * R1 || C < 2 * R1 || L < 2 * R2 || C < 2 * R2 || distancia < R1 + R2)
            {
                Console.WriteLine("N");
            }
            else
            {
                Console.WriteLine("S");
            }
        }
    }
}