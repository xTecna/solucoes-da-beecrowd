using System;

class URI {
    static void Main(string[] args) {
        double X;

        X = double.Parse(Console.ReadLine());

        for(int i = 0; i < 100; ++i){
            Console.WriteLine($"N[{i}] = {X:0.0000}");
            X /= 2;
        }
    }
}