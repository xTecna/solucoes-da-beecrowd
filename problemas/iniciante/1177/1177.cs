using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < 1000; ++i){
            Console.WriteLine($"N[{i}] = {i % N}");
        }
    }
}