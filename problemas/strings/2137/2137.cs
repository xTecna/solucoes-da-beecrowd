using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            List<string> codigos = new List<string>();
            for(int i = 0; i < N; ++i){
                codigos.Add(Console.ReadLine().Trim());
            }

            codigos.Sort();

            for(int i = 0; i < N; ++i){
                Console.WriteLine(codigos[i]);
            }
        }
    }
}