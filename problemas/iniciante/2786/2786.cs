using System;

class URI {
    static void Main(string[] args) {
        int L = int.Parse(Console.ReadLine());
        int C = int.Parse(Console.ReadLine());

        Console.WriteLine(L * C + (L - 1) * (C - 1));
        Console.WriteLine(2 * (L + C - 2));
    }
}