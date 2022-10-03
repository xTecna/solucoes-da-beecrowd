using System;

class URI {
    static bool[] C { get; set; }

    static void Crivo(){
        C = new bool[10001];

        for(int i = 0; i < 10001; ++i)
            C[i] = (i % 2 == 1);
        C[1] = false;
        C[2] = true;

        for(int i = 0; i < 10001; ++i)
            if(C[i])
                for(int j = 3 * i; j < 10001; j += 2 * i)
                C[j] = false;
    }

    static void Main(string[] args) {
        Crivo();

        int[] moedas;
        string entrada;
        while(!string.IsNullOrEmpty(entrada = Console.ReadLine())){
            int M = int.Parse(entrada);
            
            moedas = new int[M];
            for(int i = 0; i < M; ++i)
                moedas[i] = int.Parse(Console.ReadLine());
            
            int N = int.Parse(Console.ReadLine());

            int soma = 0;
            for(int i = M - 1; i > -1; i -= N)
                soma += moedas[i];
            
            if(C[soma])
                Console.WriteLine("You’re a coastal aircraft, Robbie, a large silver aircraft.");
            else
                Console.WriteLine("Bad boy! I’ll hit you.");
        }
    }
}