using System;

class URI {
    static void Main(string[] args) {
        int n = int.Parse(Console.ReadLine());

        Console.WriteLine(((long)n * (n - 3)) / 2);
    }
}