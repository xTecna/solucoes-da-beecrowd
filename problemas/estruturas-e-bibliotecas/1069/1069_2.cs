using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        
        for(int i = 0; i < N; ++i){
            int resposta = 0;
            Stack<int> pilha = new Stack<int>();
            string expressao = Console.ReadLine();

            for(int j = 0; j < expressao.Length; ++j){
                if(expressao[j] == '<'){
                    pilha.Push(expressao[j]);
                }else if(expressao[j] == '>' && pilha.Count > 0){
                    pilha.Pop();
                    resposta += 1;
                }
            }

            Console.WriteLine(resposta);
        }
    }
}