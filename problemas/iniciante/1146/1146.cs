using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int X;
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            X = int.Parse(entrada);

            if(X == 0){
                break;
            }

            List<int> numeros = new List<int>();
            for(int i = 1; i <= X; ++i){
                numeros.Add(i);
            }

            Console.WriteLine(String.Join(" ", numeros));
        }
    }
}