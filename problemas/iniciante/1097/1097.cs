using System;

class URI {
    static void Main(string[] args) {
        int k = 7;
        for(int i = 1; i < 10; i += 2){
            for(int j = k; j > k - 3; --j){
                Console.WriteLine($"I={i} J={j}");
            }
            k += 2;
        }
    }
}