using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null) {
            int n = int.Parse(entrada);
            if (n == 0) {
                break;
            }

            string resposta = "";
            int menor_ano = 9999;
            for(int i = 0; i < n; ++i){
                string[] partes = Console.ReadLine().Trim().Split(' ');
                int ano = int.Parse(partes[1]) - int.Parse(partes[2]);

                if(ano < menor_ano){
                    menor_ano = ano;
                    resposta = partes[0];
                }
            }

            Console.WriteLine(resposta);
        }
    }
}