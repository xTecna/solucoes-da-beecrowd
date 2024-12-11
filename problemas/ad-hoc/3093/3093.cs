using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            string cartas = Console.ReadLine();

            if (cartas.Contains("A") && cartas.Contains("Q") && cartas.Contains("K") && cartas.Contains("J")) {
                Console.WriteLine("Aaah muleke");
            } else {
                Console.WriteLine("Ooo raca viu");
            }
        }
    }
}