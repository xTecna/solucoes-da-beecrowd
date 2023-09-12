using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            string frase = Console.ReadLine();

            Set<char> letras = new Set<char>();
            for(int j = 0; j < frase.length(); ++j){
                if(char.IsLetter(frase[j])){
                    letras.Add(frase[j]);
                }
            }

            if(letras.Count == 26){
                Console.WriteLine("frase completa");
            }else if(letras.Count >= 13){
                Console.WriteLine("frase quase completa");
            }else{
                Console.WriteLine("frase mal elaborada");
            }
        }
    }
}