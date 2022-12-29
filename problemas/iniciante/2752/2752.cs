using System;

class URI {
    static void Main(string[] args) {
        string frase = "AMO FAZER EXERCICIO NO URI";

        Console.WriteLine($"<{frase}>");
        Console.WriteLine($"<{frase,30}>");
        Console.WriteLine($"<{frase.Substring(0, 20)}>");
        Console.WriteLine($"<{frase,-20}>");
        Console.WriteLine($"<{frase,-30}>");
        Console.WriteLine($"<{frase}>");
        Console.WriteLine($"<{frase.Substring(0, 20),30}>");
        Console.WriteLine($"<{frase.Substring(0, 20),-30}>");
    }
}