using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        int coelhos = 0;
        int ratos = 0;
        int sapos = 0;
        for(int i = 0; i < N; ++i){
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            int Quantia = int.Parse(entrada[0]);
            string Tipo = entrada[1];

            switch(Tipo){
                case "C":   coelhos += Quantia;
                            break;
                case "R":   ratos += Quantia;
                            break;
                case "S":   sapos += Quantia;
                            break;
            }
        }
        int total = coelhos + ratos + sapos;

        Console.WriteLine($"Total: {total} cobaias");
        Console.WriteLine($"Total de coelhos: {coelhos}");
        Console.WriteLine($"Total de ratos: {ratos}");
        Console.WriteLine($"Total de sapos: {sapos}");
        Console.WriteLine($"Percentual de coelhos: {(double)coelhos/total * 100:0.00} %");
        Console.WriteLine($"Percentual de ratos: {(double)ratos/total * 100:0.00} %");
        Console.WriteLine($"Percentual de sapos: {(double)sapos/total * 100:0.00} %");
    }
}