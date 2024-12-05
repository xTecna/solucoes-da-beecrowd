using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        int anterior = -1;
        int resposta = 0;
        for(int i = 0; i < N; ++i)
        {
            int atual = int.Parse(Console.ReadLine());
            if(atual != anterior)
            {
                anterior = atual;
                resposta += 1;
            }
        }

        Console.WriteLine(resposta);
    }
}