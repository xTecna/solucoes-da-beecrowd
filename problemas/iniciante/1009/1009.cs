using System;

class URI {
    static void Main(string[] args) {
        string vendedor = Console.ReadLine();
        double salario = double.Parse(Console.ReadLine());
        double vendas = double.Parse(Console.ReadLine());

        double total = salario + 0.15 * vendas;

        Console.WriteLine($"TOTAL = R$ {total:0.00}");
    }
}