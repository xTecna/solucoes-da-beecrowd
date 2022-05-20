using System;

class URI {
    static void Main(string[] args) {
        string frase = "LIFE IS NOT A PROBLEM TO BE SOLVED";

        int N = int.Parse(Console.ReadLine());

        Console.WriteLine($"{frase.Substring(0, N)}");
    }
}