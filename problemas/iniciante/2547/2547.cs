using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int N = numeros[0];
            int Amin = numeros[1];
            int Amax = numeros[2];

            int permitidos = 0;
            for(int i = 0; i < N; ++i){
                int A = int.Parse(Console.ReadLine());

                if(A >= Amin && A <= Amax){
                    ++permitidos;
                }
            }

            Console.WriteLine(permitidos);
        }
    }
}