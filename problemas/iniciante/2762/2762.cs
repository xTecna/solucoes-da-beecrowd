using System;

class URI {
    static void Main(string[] args) {
        string[] entrada = Console.ReadLine().Trim().Split('.');
        Console.WriteLine($"{int.Parse(entrada[1])}.{int.Parse(entrada[0])}");
    }
}