using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        int A1 = int.Parse(Console.ReadLine());
        int A2 = int.Parse(Console.ReadLine());
        int A3 = int.Parse(Console.ReadLine());

        Console.WriteLine(2 * Math.Min(A2 + 2 * A3, Math.Min(A1 + A3, 2 * A1 + A2)));
    }
}