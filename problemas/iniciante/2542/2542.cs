using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int M = numeros[0];
            int L = numeros[1];

            int[,] cartasMarcos = new int[M + 1, N + 1];
            for(int i = 1; i <= M; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                for(int j = 1; j <= N; ++j){
                    cartasMarcos[i, j] = numeros[j - 1];
                }
            }
            
            int[,] cartasLeonardo = new int[L + 1, N + 1];
            for(int i = 1; i <= L; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                for(int j = 1; j <= N; ++j){
                    cartasLeonardo[i, j] = numeros[j - 1];
                }
            }

            numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int A = int.Parse(Console.ReadLine());

            if(cartasMarcos[numeros[0], A] > cartasLeonardo[numeros[1], A]){
                Console.WriteLine("Marcos");
            }else if(cartasLeonardo[numeros[1], A] > cartasMarcos[numeros[0], A]){
                Console.WriteLine("Leonardo");
            }else{
                Console.WriteLine("Empate");
            }
        }
    }
}