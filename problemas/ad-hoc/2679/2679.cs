using System;

class URI { 
    static void Main(string[] args) {
        int X = int.Parse(Console.ReadLine());
        X += 2 - (X % 2);
        Console.WriteLine(X);
    }
}