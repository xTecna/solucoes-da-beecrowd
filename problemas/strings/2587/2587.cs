using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            string palavra1 = Console.ReadLine();
            string palavra2 = Console.ReadLine();
            string secreta = Console.ReadLine();

            int pos1 = secreta.IndexOf('_');
            int pos2 = secreta.IndexOf('_', pos1 + 1);

            if(palavra1[pos1] == palavra2[pos2] || palavra1[pos2] == palavra2[pos1]) {
                Console.WriteLine("Y");
            } else {
                Console.WriteLine("N");
            }
        }
    }
}