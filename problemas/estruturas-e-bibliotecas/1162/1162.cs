using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int comp(int a, int b){
        return a - b;
    }
    
    static int insertionSort(ref List<int> V){
        int trocas = 0;
        
        for(int i = 1; i < V.Count; ++i){
            int j = i, k = j - 1;
            while(k > -1 && comp(V[j], V[k]) < 0){
                int temp = V[j];
                V[j] = V[k];
                V[k] = temp;
                ++trocas;
                --j;
                --k;
            }
        }
        
        return trocas;
    }
    
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        
        for(int k = 0; k < N; ++k){
            int L = int.Parse(Console.ReadLine());
            List<int> vagoes = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            
            Console.WriteLine($"Optimal train swapping takes {insertionSort(ref vagoes)} swaps.");
        }
    }
}