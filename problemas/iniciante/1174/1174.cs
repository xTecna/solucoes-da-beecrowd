using System;

class URI {
    static void Main(string[] args) {
        for(int i = 0; i < 100; ++i){
            double n = double.Parse(Console.ReadLine());

            if(n <= 10.0){
                Console.WriteLine($"A[{i}] = {n:0.0}");
            }
        }
    }
}