using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int Comp(Tuple<int, int> a, Tuple<int, int> b){
        return b.Item1 - a.Item1;
    }
    
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);
            
            if(N == 0){
                break;
            }
            
            List<Tuple<int, int>> V = Console.ReadLine().Trim().Split(' ').Select((x, i) => new Tuple<int, int>(int.Parse(x), i)).ToList();
            V.Sort(Comp);
            
            Console.WriteLine(V[1].Item2 + 1);
        }
    }
}