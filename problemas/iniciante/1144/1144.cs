using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 1; i <= N; ++i){
            Console.WriteLine($"{i} {i * i} {i * i * i}");
            Console.WriteLine($"{i} {i * i + 1} {i * i * i + 1}");
        }
    }
}