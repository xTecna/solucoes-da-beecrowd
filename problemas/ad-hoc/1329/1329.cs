using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;
        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            if(N == 0){
                break;
            }

            int joao = 0;
            List<int> partes = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            for(int i = 0; i < partes.Count(); ++i){
                joao += partes[i];
            }

            int maria = N - joao;
            Console.WriteLine($"Mary won {maria} times and John won {joao} times");
        }
    }
}