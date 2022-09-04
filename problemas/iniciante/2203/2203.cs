using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI {
    static double dist(int x1, int y1, int x2, int y2){
        return Math.Sqrt(((x1 - x2) * (x1 - x2)) + ((y1 - y2) * (y1 - y2)));
    }

    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            double distancia = dist(numeros[0], numeros[1], numeros[2], numeros[3]);
            double distancia_percorrida = numeros[4] * 1.5;

            if(distancia + distancia_percorrida <= numeros[5] + numeros[6]){
                Console.WriteLine("Y");
            }else{
                Console.WriteLine("N");
            }
        }
    }
}