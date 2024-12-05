using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int diametro = int.Parse(Console.ReadLine());

        List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        int altura = numeros[0];
        int largura = numeros[1];
        int profundidade = numeros[2];

        if (diametro <= altura && diametro <= largura && diametro <= profundidade) 
        {
            Console.WriteLine("S");
        } else {
            Console.WriteLine("N");
        }
    }
}