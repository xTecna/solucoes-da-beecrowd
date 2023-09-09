using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> jogadas = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int A = jogadas[0];
            int B = jogadas[1];
            int C = jogadas[2];

            if(A + B + C == 1){
                if(A == 1)  Console.WriteLine("A");
                if(B == 1)  Console.WriteLine("B");
                if(C == 1)  Console.WriteLine("C");
            }else if(A + B + C == 2){
                if(A == 0)  Console.WriteLine("A");
                if(B == 0)  Console.WriteLine("B");
                if(C == 0)  Console.WriteLine("C");
            }else{
                Console.WriteLine("*");
            }
        }
    }
}