using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string[] entrada = Console.ReadLine().Trim().Split(' ');
        int X = int.Parse(entrada[0]);
        int Y = int.Parse(entrada[1]);

        for(int i = 1; i <= Y; i += X){
            List<int> numeros = new List<int>();
            for(int j = 0; j < X && i + j <= Y; ++j){
                numeros.Add(i + j);
            }
            Console.WriteLine(String.Join(" ", numeros));
        }
    }
}