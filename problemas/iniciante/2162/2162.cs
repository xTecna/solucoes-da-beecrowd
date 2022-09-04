using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        bool pico = false, vale = false, mesmoPadrao = true;
        List<int> paisagem = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        for(int i = 1; i < N; ++i){
            if(paisagem[i] > paisagem[i - 1] && !pico){
                pico = true;
                vale = false;
            }else if(paisagem[i] < paisagem[i - 1] && !vale){
                pico = false;
                vale = true;
            }else{
                mesmoPadrao = false;
                break;
            }
        }

        Console.WriteLine(mesmoPadrao ? "1" : "0");
    }
}