using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string[] renas = new string[9] {"Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"};

        int soma = 0;
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        for(int i = 0; i < 9; ++i){
            soma += entrada[i];
        }

        Console.WriteLine(renas[soma % 9]);
    }
}