using System;

class URI {
    static void Main(string[] args) {
        int N;

        N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            for(int j = 0; j < 3; ++j){
                Console.Write($"{4 * i + 1 + j} ");
            }
            Console.WriteLine("PUM");
        }
    }
}