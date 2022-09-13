using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        Dictionary<string, int> vitaminaC = new Dictionary<string, int> {
            { "suco de laranja", 120 },
            { "morango fresco", 85 },
            { "mamao", 85 },
            { "goiaba vermelha", 70 },
            { "manga", 56 },
            { "laranja", 50 },
            { "brocolis", 34 },
        };

        string entrada;
        while((entrada = Console.ReadLine()) != null){
            int T = int.Parse(entrada);

            if(T == 0){
                break;
            }

            int consumo = 0;
            for(int i = 0; i < T; ++i){
                string[] dados = Console.ReadLine().Trim().Split(' ');
                int N = int.Parse(dados[0]);
                string nome = string.Join(" ", dados.Skip(1).ToArray());

                consumo += N * vitaminaC[nome];
            }

            if(consumo < 110){
                Console.WriteLine($"Mais {110 - consumo} mg");
            }else if(consumo > 130){
                Console.WriteLine($"Menos {consumo - 130} mg");
            }else{
                Console.WriteLine($"{consumo} mg");
            }
        }
    }
}