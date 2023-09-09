using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int comp(string a, string b){
        return b.Length - a.Length;
    }
    
    static void insertionSort(ref List<string> V){
        for(int i = 1; i < V.Count; ++i){
            int j = i, k = j - 1;
            while(k > -1 && comp(V[j], V[k]) < 0){
                string temp = V[j];
                V[j] = V[k];
                V[k] = temp;
                --j;
                --k;
            }
        }
    }
    
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        
        for(int i = 0; i < N; ++i){
            List<string> palavras = Console.ReadLine().Trim().Split(' ').ToList();
            
            insertionSort(ref palavras);
            
            Console.WriteLine(string.Join(" ", palavras));
        }
    }
}