using System;

class URI {
    static void Main(string[] args) {
        for(int i = 1, j = 60; j > -1; i += 3, j -= 5){
            Console.WriteLine($"I={i} J={j}");
        }
    }
}