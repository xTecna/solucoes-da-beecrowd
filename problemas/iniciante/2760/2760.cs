using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        string A = Console.ReadLine();
        string B = Console.ReadLine();
        string C = Console.ReadLine();

        Console.WriteLine($"{A}{B}{C}");
        Console.WriteLine($"{B}{C}{A}");
        Console.WriteLine($"{C}{A}{B}");
        Console.WriteLine($"{A.Substring(0, Math.Min(A.Length, 10))}{B.Substring(0, Math.Min(B.Length, 10))}{C.Substring(0, Math.Min(C.Length, 10))}");
    }
}