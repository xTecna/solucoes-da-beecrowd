using System;
using System.Collections.Generic;

class URI { 
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        int levadas = 0;
        int comportadas = 0;
        List<string> criancas = new List<string>();
        for(int i = 0; i < N; ++i){
            string[] palavras = Console.ReadLine().Trim().Split(' ');

            if(palavras[0] == "+"){
                comportadas += 1;
            }else{
                levadas += 1;
            }
            
            criancas.Add(palavras[1]);
        }

        criancas.Sort();
        for(int i = 0; i < N; ++i){
            Console.WriteLine(criancas[i]);
        }
        Console.WriteLine($"Se comportaram: {comportadas} | Nao se comportaram: {levadas}");
    }
}