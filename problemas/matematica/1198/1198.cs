using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            List<long> guerreiros = entrada.Trim().Split(' ').Select(x => long.Parse(x)).ToList();
            Console.WriteLine(Math.Abs(guerreiros[0] - guerreiros[1]));
        }
    }
}