using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine().Trim());
        List<int> AB = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        if(AB[0] + AB[1] <= N){
            Console.WriteLine("Farei hoje!");
        }else{
            Console.WriteLine("Deixa para amanha!");
        }
    }
}