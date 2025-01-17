using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            string hamekame = Console.ReadLine();
            MatchCollection matches = Regex.Matches(hamekame, "a+");

            int tamanho1 = matches[0].Value.Length;
            int tamanho2 = matches[1].Value.Length;

            string resposta = "k";
            for(int j = 0; j < tamanho1 * tamanho2; ++j) {
                resposta += "a";
            }
            Console.WriteLine(resposta);
        }
    }
}