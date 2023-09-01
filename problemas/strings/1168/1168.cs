using System;

class URI {
    static int[] leds = new int[] {6, 2, 5, 5, 4, 5, 6, 3, 7, 6};

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            char[] V = Console.ReadLine().ToCharArray();

            int resposta = 0;
            for(int j = 0; j < V.Length; ++j){
                resposta += leds[((int)V[j]) - ((int)'0')];
            }

            Console.WriteLine($"{resposta} leds");
        }
    }
}