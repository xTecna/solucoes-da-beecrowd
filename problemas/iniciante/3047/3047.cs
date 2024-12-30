using System;
using System.Text;

class URI { 
    static void Main(string[] args) {
        int M = int.Parse(Console.ReadLine());
        int A = int.Parse(Console.ReadLine());
        int B = int.Parse(Console.ReadLine());

        int C = M - A - B;

        Console.WriteLine(Math.Max(A, Math.Max(B, C)));
    }
}