using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int N = numeros[0];
            int I = numeros[1];

            int gameplays = 0;
            for(int i = 0; i < N; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

                if(numeros[0] == I && numeros[1] == 0){
                    ++gameplays;
                }
            }

            Console.WriteLine(gameplays);
        }
    }
}