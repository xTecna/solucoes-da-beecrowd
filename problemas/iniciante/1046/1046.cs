using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        int hora_inicial = entrada[0];
        int hora_final = entrada[1];
        
        if(hora_final <= hora_inicial)
            hora_final += 24;
        
        Console.WriteLine($"O JOGO DUROU {hora_final - hora_inicial} HORA(S)");
    }
}