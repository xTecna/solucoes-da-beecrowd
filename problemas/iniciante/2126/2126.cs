using System;

class URI {
    static void Main(string[] args) {
        int k = 0;
        string N1, N2;

        while((N1 = Console.ReadLine()) != null){
            N2 = Console.ReadLine();

            int qtd = 0, pos = -1, p = N2.IndexOf(N1);
            while(p != -1){
                ++qtd;
                pos = p;
                p = N2.IndexOf(N1, p + 1);
            }

            Console.WriteLine($"Caso #{++k}:");
            if(qtd == 0){
                Console.WriteLine("Nao existe subsequencia\n");
            }else{
                Console.WriteLine($"Qtd.Subsequencias: {qtd}");
                Console.WriteLine($"Pos: {pos + 1}\n");
            }
        }
    }
}