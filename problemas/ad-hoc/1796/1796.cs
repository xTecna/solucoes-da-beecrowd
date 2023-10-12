using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int Q = int.Parse(Console.ReadLine());
        List<int> votos = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        int satisfatorio = Q;
        for(int i = 0; i < Q; ++i){
            satisfatorio -= votos[i];
        }

        if(satisfatorio > Q/2){
            Console.WriteLine("Y");
        }else{
            Console.WriteLine("N");
        }
    }
}