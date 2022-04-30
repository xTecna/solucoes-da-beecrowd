using System;

class URI {
    static void Main(string[] args) {
        string codigo;
        int alcool, gasolina, diesel;

        alcool = 0;
        gasolina = 0;
        diesel = 0;
        while((codigo = Console.ReadLine()) != null){
            if(codigo == "4"){
                break;
            }

            switch(codigo){
                case "1":   ++alcool;
                            break;
                case "2":   ++gasolina;
                            break;
                case "3":   ++diesel;
                            break;
                default:    break;
            }
        }

        Console.WriteLine("MUITO OBRIGADO");
        Console.WriteLine($"Alcool: {alcool}");
        Console.WriteLine($"Gasolina: {gasolina}");
        Console.WriteLine($"Diesel: {diesel}");
    }
}