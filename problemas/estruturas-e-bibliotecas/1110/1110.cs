using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        string entrada;
        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            if(N == 0){
                break;
            }

            LinkedList<int> cartas = new LinkedList<int>();
            for(int i = 1; i <= N; ++i){
                cartas.AddFirst(i);
            }

            List<string> descartadas = new List<string>();
            while(cartas.Count > 1){
                descartadas.Add(cartas.First.Value);
                cartas.RemoveFirst();

                int topo = cartas.First.Value;
                cartas.RemoveFirst();
                cartas.AddLast(topo);
            }

            Console.WriteLine($"Discarded cards: {string.Join(", ", descartadas)}");
            Console.WriteLine($"Remaining card: {cartas.First.Value}");
        }
    }
}