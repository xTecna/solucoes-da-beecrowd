using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int[] pesos = {2, 3, 5};

        int N = int.Parse(Console.ReadLine());
        for(int k = 0; k < N; ++k){
            double media = 0.0;

            List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
            for(int i = 0; i < 3; ++i){
                media += entrada[i] * pesos[i];
            }

            Console.WriteLine($"{media/10:0.0}");
        }
    }
}