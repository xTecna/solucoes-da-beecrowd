using System;
using System.Collections.Generic;

class URI {
    static int converte(string jogada){
        if(jogada == "pedra"){
            return 0;
        }else if(jogada == "papel"){
            return 1;
        }
        return 2;
    }

    static void Main(string[] args) {
        int[,] regras = new int[3,3] {
            {0, 1, -1},     // pedra
            {-1, 0, -1},    // papel
            {1, 1, 0},      // ataque aereo
        };

        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            int jogada1 = converte(Console.ReadLine());
            int jogada2 = converte(Console.ReadLine());

            if(regras[jogada1, jogada2] == 0){
                switch(jogada1){
                    case 0: Console.WriteLine("Sem ganhador");
                            break;
                    case 1: Console.WriteLine("Ambos venceram");
                            break;
                    case 2: Console.WriteLine("Aniquilacao mutua");
                            break;
                }
            }else{
                Console.WriteLine($"Jogador {(regras[jogada1, jogada2] == 1 ? 1 : 2)} venceu");
            }
        }
    }
}