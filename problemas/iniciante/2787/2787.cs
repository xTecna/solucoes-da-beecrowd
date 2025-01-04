using System;

class URI {
    static void Main(string[] args) {
        int L = int.Parse(Console.ReadLine());
        int C = int.Parse(Console.ReadLine());

        Console.WriteLine(1 - ((L % 2) ^ (C % 2)));
    }
}