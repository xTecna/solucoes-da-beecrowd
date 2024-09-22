using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int X = 0;
        List<int> Xs = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList(
        for(int i = 0; i < 5; ++i){
            X *= 2;
            X += Xs[i];
        }
        
        int Y = 0;
        List<int> Ys = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList(
        for(int i = 0; i < 5; ++i){
            Y *= 2;
            Y += Ys[i];
        }
        
        if((X ^ Y) == 31){
            Console.WriteLine("Y");
        }else{
            Console.WriteLine("N");
        }
    }
