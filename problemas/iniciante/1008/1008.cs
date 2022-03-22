using System;

class URI {
    static void Main(string[] args) {
        int numero = int.Parse(Console.ReadLine());
        int horas = int.Parse(Console.ReadLine());
        double valor = double.Parse(Console.ReadLine());

        double salario = valor * horas;

        Console.WriteLine($"NUMBER = {numero}");
        Console.WriteLine($"SALARY = U$ {salario:0.00}");
    }
}