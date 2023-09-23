using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string[] entrada = Console.ReadLine().Trim().Split(' ');

            int x = int.Parse(entrada[0]);
            int y = int.Parse(entrada[1]);

            Console.WriteLine($"{(x * y) / 2} cm2");
        }
    }
}