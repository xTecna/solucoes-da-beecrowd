using System;

class URI {
    static void Main(string[] args) {
        double S = 0.0;

        for(int i = 0; i < 20; ++i){
            S += (double)(2 * i + 1)/(1 << i);
        }

        Console.WriteLine($"{S:0.00}");
    }
}