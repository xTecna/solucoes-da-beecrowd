using System;

class URI {
    static void Main(string[] args) {
        int N;

        N = int.Parse(Console.ReadLine());

        for(int i = 1; i <= N; ++i){
            Console.WriteLine($"{i} {i * i} {i * i * i}");
        }
    }
}