using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> vt = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int v = vt[0];
            int t = vt[1];

            Console.WriteLine(v * 2 * t);
        }
    }
}