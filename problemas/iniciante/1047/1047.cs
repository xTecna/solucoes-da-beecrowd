using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

        int inicial = entrada[0] * 60 + entrada[1];
        int final = entrada[2] * 60 + entrada[3];

        if(final <= inicial){
            final += 24 * 60;
        }

        Console.WriteLine($"O JOGO DUROU {(final - inicial) / 60} HORA(S) E {(final - inicial) % 60} MINUTO(S)");
    }
}