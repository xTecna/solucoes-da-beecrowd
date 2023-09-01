using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        string expressao;

        while((expressao = Console.ReadLine()) != null){
            int i;
            Stack<char> pilha = new Stack<char>();

            for(i = 0; i < expressao.Length; ++i){
                if(expressao[i] == '('){
                    pilha.Push('(');
                }else if(expressao[i] == ')'){
                    if(pilha.Count == 0){
                        break;
                    }
                    pilha.Pop();
                }
            }

            if(i == expressao.Length && pilha.Count == 0){
                Console.WriteLine("correct");
            }else{
                Console.WriteLine("incorrect");
            }
        }
    }
}