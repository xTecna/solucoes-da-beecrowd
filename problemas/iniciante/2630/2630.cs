using System;
using System.Runtime;

class URI {
    static int eye(int r, int g, int b){
        return (int)(0.3 * r + 0.59 * g + 0.11 * b);
    }

    static int mean(int r, int g, int b){
        return (r + g + b)/3;
    }

    static int min(int r, int g, int b){
        return Math.Min(r, Math.Min(g, b));
    }

    static int max(int r, int g, int b){
        return Math.Max(r, Math.Max(g, b));
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int T = int.Parse(entrada);

            for(int i = 1; i <= T; ++i){
                string conversao = Console.ReadLine();
                string[] numeros = Console.ReadLine().Trim().Split(' ');
                int R = int.Parse(numeros[0]);
                int G = int.Parse(numeros[1]);
                int B = int.Parse(numeros[2]);

                Console.Write($"Caso #{i}: ");
                if(conversao == "eye"){
                    Console.WriteLine(eye(R, G, B));
                }else if(conversao == "mean"){
                    Console.WriteLine(mean(R, G, B));
                }else if(conversao == "min"){
                    Console.WriteLine(min(R, G, B));
                }else if(conversao == "max"){
                    Console.WriteLine(max(R, G, B));
                }
            }
        }
    }
}