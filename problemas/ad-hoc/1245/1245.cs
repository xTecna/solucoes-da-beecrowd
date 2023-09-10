using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            int[,] sapatos = new int[61,2];
            for(int i = 0; i < N; ++i){
                string[] sapato = Console.ReadLine().Trim().Split(' ');

                int tamanho = int.Parse(sapato[0]);
                char lado = sapato[1][0];

                sapatos[tamanho, lado - 'D'] += 1;
            }

            int pares = 0;
            for(int i = 30; i < 61; ++i){
                pares += Math.Min(sapatos[i, 0], sapatos[i, 1]);
            }

            Console.WriteLine(pares);
        }
    }
}