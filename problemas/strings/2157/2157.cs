using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int C = int.Parse(Console.ReadLine());

        for(int k = 0; k < C; ++k){
            List<int> BE = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            string resposta = "";
            for(int i = BE[0]; i <= BE[1]; ++i){
                resposta += i.ToString();
            }
            resposta += string.Join("", resposta.Reverse().ToArray());

            Console.WriteLine(resposta);
        }
    }
}