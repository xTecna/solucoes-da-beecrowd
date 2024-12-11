using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        while(true){
            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int L = numeros[0];
            int R = numeros[1];

            if (L == 0 && R == 0) {
                break;
            }

            Console.WriteLine(L + R);
        }
    }
}