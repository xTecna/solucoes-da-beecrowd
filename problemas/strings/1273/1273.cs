using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        bool first = true;
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            if(N == 0){
                break;
            }

            if(first)   first = false;
            else        Console.WriteLine("");

            int maior = 0;
            string[] palavras = new string[N];
            for(int i = 0; i < N; ++i){
                palavras[i] = Console.ReadLine().Trim();
                maior = Math.Max(maior, palavras[i].Length);
            }

            for(int i = 0; i < N; ++i){
                Console.WriteLine(palavras[i].PadLeft(maior));
            }
        }
    }
}