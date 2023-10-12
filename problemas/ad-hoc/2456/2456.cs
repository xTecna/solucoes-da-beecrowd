using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> cartas = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        bool crescente = true;
        bool decrescente = true;
        for(int i = 0; i < 4; ++i){
            if(cartas[i] <= cartas[i + 1]){
                decrescente = false;
            }
            if(cartas[i] >= cartas[i + 1]){
                crescente = false;
            }
        }

        if(crescente){
            Console.WriteLine("C");
        }else if(decrescente){
            Console.WriteLine("D");
        }else{
            Console.WriteLine("N");
        }
    }
}