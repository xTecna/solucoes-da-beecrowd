using System;
using System.Runtime;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int max(int a, int b){
        return (a + b + Math.Abs(a - b))/2;
    }
    
    static void Main(string[] args) {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        int a = entrada[0];
        int b = entrada[1];
        int c = entrada[2];
        
        Console.WriteLine($"{max(a, max(b, c))} eh o maior");
    }
}