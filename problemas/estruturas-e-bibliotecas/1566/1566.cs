using System;
using System.Collections.Generic;
using System.Linq;

class URI {
	static void countingSort(ref List<int> V, int limite){
		List<int> aux = new List<int>(limite);
		for(int i = 0; i < limite; ++i){
			aux.Add(0);
		}
		int k = 0, n = V.Count;
		for(int i = 0; i < n; ++i){
			aux[V[i]] += 1;
		}
		for(int i = 0; i < limite; ++i){
			for(int j = 0; j < aux[i]; ++j){
				V[k++] = i;
			}
		}
	}
	
    static void Main(string[] args) {
        int NC = int.Parse(Console.ReadLine());
		for(int k = 0; k < NC; ++k){
			int N = int.Parse(Console.ReadLine());

			List<int> V = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

			countingSort(ref V, 231);

			Console.WriteLine(String.Join(" ", V));
		}
    }
}