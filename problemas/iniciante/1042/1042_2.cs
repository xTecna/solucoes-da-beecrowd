using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void swap(List<int> lista, int a, int b){
        int tmp = lista[a];
        lista[a] = lista[b];
        lista[b] = tmp;
    }
    
    static void Main(string[] args) {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        List<int> original = new List<int>(entrada);
        
        if(entrada[1] < entrada[0])
            swap(entrada, 1, 0);
        if(entrada[2] < entrada[1]){
            swap(entrada, 2, 1);
            if(entrada[1] < entrada[0])
                swap(entrada, 1, 0);
        }
        
        foreach(var numero in entrada){
            Console.WriteLine(numero);
        }
        Console.WriteLine("");
        foreach(var numero in original){
            Console.WriteLine(numero);
        }
    }
}