using System;

class URI {
    static void Main(string[] args) {
        int reajuste;
        double salario;
        
        salario = double.Parse(Console.ReadLine());
        
        if(salario <= 400.00)
            reajuste = 15;
        else if(salario <= 800.00)
            reajuste = 12;
        else if(salario <= 1200.00)
            reajuste = 10;
        else if(salario <= 2000.00)
            reajuste = 7;
        else
            reajuste = 4;
        
        Console.WriteLine($"Novo salario: {salario * (1 + reajuste/100.0):0.00}");
        Console.WriteLine($"Reajuste ganho: {salario * reajuste/100.0:0.00}");
        Console.WriteLine($"Em percentual: {reajuste} %");
    }
}