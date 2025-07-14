using System;

class URI
{
    static void Main(string[] args)
    {
        String[] numeros = Console.ReadLine().Trim().Split(' ');
        int R = int.Parse(numeros[0]);
        int L = int.Parse(numeros[1]);

        Console.WriteLine((int)(L / ((4.0 * 3.1415 * R * R * R) / 3.0)));
    }
}