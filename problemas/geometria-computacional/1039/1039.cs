using System;
using System.Runtime;
using System.Linq;

class URI {
    static double dist(int x1, int y1, int x2, int y2){
        return Math.Sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int[] numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToArray();

            if(dist(numeros[1], numeros[2], numeros[4], numeros[5]) <= numeros[0] - numeros[3]){
                Console.WriteLine("RICO");
            }else{
                Console.WriteLine("MORTO");
            }
        }
    }
}