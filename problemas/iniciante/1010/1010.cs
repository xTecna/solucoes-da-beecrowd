using System;

class URI {
    static void Main(string[] args) {
        string[] linhaPeca1 = Console.ReadLine().Trim().Split(' ');
        int quantidade1 = int.Parse(linhaPeca1[1]);
        double valor1 = double.Parse(linhaPeca1[2]);

        string[] linhaPeca2 = Console.ReadLine().Trim().Split(' ');
        int quantidade2 = int.Parse(linhaPeca2[1]);
        double valor2 = double.Parse(linhaPeca2[2]);

        double valor = quantidade1 * valor1 + quantidade2 * valor2;

        Console.WriteLine($"VALOR A PAGAR: R$ {valor:0.00}");
    }
}