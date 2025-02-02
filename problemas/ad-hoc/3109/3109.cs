using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        int[] mesas = new int[N + 1];
        for(int i = 0; i <= N; ++i){
            mesas[i] = i;
        }

        int Q = int.Parse(Console.ReadLine());

        for(int i = 0; i < Q; ++i){
            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            if (numeros[0] == 1) {
                int a = numeros[1];
                int b = numeros[2];

                int temp = mesas[a];
                mesas[a] = mesas[b];
                mesas[b] = temp;
            } else {
                int a = numeros[1];

                int resposta = 0;
                int mesa = mesas[a];
                while (mesa != a) {
                    resposta += 1;
                    mesa = mesas[mesa];
                }

                Console.WriteLine(resposta);
            }
        }
    }
}