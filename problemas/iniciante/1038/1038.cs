using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        int codigo = entrada[0];
        int quantidade = entrada[1];
        
        double total = 0.0;
        switch(codigo){
            case 1: total = quantidade * 4.00;
                    break;
            case 2: total = quantidade * 4.50;
                    break;
            case 3: total = quantidade * 5.00;
                    break;
            case 4: total = quantidade * 2.00;
                    break;
            case 5: total = quantidade * 1.50;
                    break;
        }
        
        Console.WriteLine($"Total: R$ {total:0.00}");
    }
}