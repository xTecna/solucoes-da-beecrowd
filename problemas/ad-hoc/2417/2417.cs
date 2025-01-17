using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        int cv = numeros[0];
        int ce = numeros[1];
        int cs = numeros[2];
        int fv = numeros[3];
        int fe = numeros[4];
        int fs = numeros[5];

        int cp = 10000 * (3 * cv + ce) + cs;
        int fp = 10000 * (3 * fv + fe) + fs;

        if (cp > fp) {
            Console.WriteLine("C");
        } else if (fp > cp) {
            Console.WriteLine("F");
        } else {
            Console.WriteLine("=");
        }
    }
}