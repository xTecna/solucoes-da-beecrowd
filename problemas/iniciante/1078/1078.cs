using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        
        for(int i = 1; i <= 10; ++i){
            Console.WriteLine($"{i} x {N} = {i * N}");
        }
    }
}