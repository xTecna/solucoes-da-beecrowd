using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

            if(entrada[1] == 0){
                Console.WriteLine("divisao impossivel");
            }else{
                Console.WriteLine($"{(double)entrada[0]/entrada[1]:0.0}");
            }
        }
    }
}