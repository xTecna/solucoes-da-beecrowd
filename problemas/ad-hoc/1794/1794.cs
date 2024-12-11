using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        List<int> L = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        List<int> S = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        if(L[0] <= N && N <= L[1] && S[0] <= N && N <= S[1]){
            Console.WriteLine("possivel");
        }else{
            Console.WriteLine("impossivel");
        }
    }
}