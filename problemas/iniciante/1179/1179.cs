using System;
using System.Collections.Generic;
using System.Runtime;

class URI {
    static void imprime(string nome, List<int> vetor){
        for(int i = 0; i < vetor.Count; ++i){
            Console.WriteLine($"{nome}[{i}] = {vetor[i]}");
        }
    }

    static void Main(string[] args) {
        List<int> impar, par;

        impar = new List<int>();
        par = new List<int>();
        for(int i = 0; i < 15; ++i){
            int valor = int.Parse(Console.ReadLine());
            
            if(Math.Abs(valor) % 2 == 0){
                par.Add(valor);

                if(par.Count == 5){
                    imprime("par", par);
                    par.Clear();
                }
            }else{
                impar.Add(valor);

                if(impar.Count == 5){
                    imprime("impar", impar);
                    impar.Clear();
                }
            }
        }

        imprime("impar", impar);
        imprime("par", par);
    }
}