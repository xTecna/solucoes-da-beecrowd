using System;

class URI {
    static void Main(string[] args) {
        int N, X;

        N = int.Parse(Console.ReadLine());

        int incluso = 0;
        for(int i = 0; i < N; ++i){
            X = int.Parse(Console.ReadLine());

            if(10 <= X && X <= 20){
                ++incluso;
            }
        }

        Console.WriteLine($"{incluso} in");
        Console.WriteLine($"{N - incluso} out");
    }
}