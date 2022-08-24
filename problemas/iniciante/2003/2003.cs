using System;
using System.Linq;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        string entrada;

        while ((entrada = Console.ReadLine()) != null){
            int[] numeros = entrada.Trim().Split(':').Select(x => int.Parse(x)).ToArray();

            int total = numeros[0] * 60 + numeros[1];
            Console.WriteLine($"Atraso maximo: {Math.Max(0, total + 60 - 8 * 60)}");
        }
    }
}