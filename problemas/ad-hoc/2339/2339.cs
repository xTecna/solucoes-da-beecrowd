using System;
using System.Collections.Generic;
using System.Linq;

class URI {    
    static void Main(string[] args) {
        List<int> CPF = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        int C = CPF[0];
        int P = CPF[1];
        int F = CPF[2];

        Console.WriteLine(P >= C * F ? 'S' : 'N');
    }
}