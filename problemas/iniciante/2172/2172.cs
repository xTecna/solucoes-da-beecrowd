using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<long> numeros = entrada.Trim().Split(' ').Select(x => long.Parse(x)).ToList();
            if (numeros[0] == 0 && numeros[1] == 0){
                break;
            }

            Console.WriteLine(numeros[0] * numeros[1]);
        }
    }
}