using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> LR = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int L = LR[0];
            int R = LR[1];

            if(L == 0 && R == 0){
                break;
            }

            Console.WriteLine(L + R);
        }
    }
}