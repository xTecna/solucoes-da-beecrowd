using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);
            
            if(N == 0){
                break;
            }
            
            entrada = Console.ReadLine();
            while(entrada != "0"){
                List<int> trens = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                
                Stack<int> A = new Stack<int>();
                Stack<int> B = new Stack<int>();
                Stack<int> estacao = new Stack<int>();
                for(int i = 0; i < N; ++i){
                    A.Push(trens[i]);
                    B.Push(i + 1);
                }
                
                while(A.Count > 0 || B.Count > 0 || estacao.Count > 0){
                    if(A.Count > 0 && B.Count > 0 && A.Peek() == B.Peek()){
                        A.Pop();
                        B.Pop();
                    }else if(estacao.Count > 0 && B.Count > 0 && estacao.Peek() == B.Peek()){
                        estacao.Pop();
                        B.Pop();
                    }else if(A.Count > 0){
                        estacao.Push(A.Peek());
                        A.Pop();
                    }else{
                        break;
                    }
                }
                
                if(A.Count == 0 && B.Count == 0 && estacao.Count == 0){
                    Console.WriteLine("Yes");
                }else{
                    Console.WriteLine("No");
                }
                
                entrada = Console.ReadLine();
            }
            
            Console.WriteLine("");
        }
    }
}