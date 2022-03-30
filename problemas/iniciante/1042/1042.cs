using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        List<int> original = new List<int>(entrada);
        
        entrada.Sort();
        
        foreach(var numero in entrada){
            Console.WriteLine(numero);
        }
        Console.WriteLine("");
        foreach(var numero in original){
            Console.WriteLine(numero);
        }
    }
}