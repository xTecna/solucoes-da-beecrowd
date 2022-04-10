using System;

class URI {
    static void Main(string[] args) {
        int X;

        for(int i = 0; i < 10; ++i){
            X = int.Parse(Console.ReadLine());
            Console.WriteLine($"X[{i}] = {X <= 0 ? 1 : X}");
        }
    }
}