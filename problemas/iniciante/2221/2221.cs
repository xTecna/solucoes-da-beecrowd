using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static double valorGolpe(int ataque, int defesa, int nivel, int bonus){
        return (ataque + defesa)/2.0 + bonus * (1 - (nivel % 2));
    }

    static void Main(string[] args) {
        int T = int.Parse(Console.ReadLine());
        for(int i = 0; i < T; ++i){
            int B = int.Parse(Console.ReadLine());

            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            double golpeDabriel = valorGolpe(numeros[0], numeros[1], numeros[2], B);

            numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            double golpeGuarte = valorGolpe(numeros[0], numeros[1], numeros[2], B);

            if(golpeDabriel > golpeGuarte){
                Console.WriteLine("Dabriel");
            }else if(golpeGuarte > golpeDabriel){
                Console.WriteLine("Guarte");
            }else{
                Console.WriteLine("Empate");
            }
        }
    }
}