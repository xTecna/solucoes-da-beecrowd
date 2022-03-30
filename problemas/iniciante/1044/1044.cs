using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        int A = entrada[0];
        int B = entrada[1];
        
        if(A < B){
            int temp = A;
            A = B;
            B = temp;
        }
        
        if(A % B == 0)
            Console.WriteLine("Sao Multiplos");
        else
            Console.WriteLine("Nao sao Multiplos");
    }
}