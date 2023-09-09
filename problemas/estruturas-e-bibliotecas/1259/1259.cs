using System;
using System.Collections.Generic;

class URI {
    static int Comp(int a, int b){
        if(a % 2 == 0){
            if(b % 2 == 0){
                return a - b;
            }else{
                return -1;
            }
        }else{
            if(b % 2 == 0){
                return 1;
            }else{
                return b - a;
            }
        }
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        List<int> V = new List<int>();
        for(int i = 0; i < N; ++i){
            V.Add(int.Parse(Console.ReadLine()));
        }

        V.Sort(Comp);

        for(int i = 0; i < N; ++i){
            Console.WriteLine(V[i]);
        }
    }
}