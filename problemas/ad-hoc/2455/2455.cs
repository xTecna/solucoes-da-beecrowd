using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        
        int diferenca = (numeros[2] * numeros[3]) - (numeros[0] * numeros[1]);
        
        if(diferenca < 0)       Console.WriteLine("-1");
        else if(diferenca > 0)  Console.WriteLine("1");
        else                    Console.WriteLine("0");
    }
}