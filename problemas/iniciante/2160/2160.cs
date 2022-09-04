using System;

class URI {
    static void Main(string[] args) {
        string nome = Console.ReadLine();
        Console.WriteLine(nome.Length <= 80 ? "YES" : "NO");
    }
}