using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            double C = double.Parse(Console.ReadLine());

            Console.WriteLine($"{Math.Ceiling(Math.Log(C, 2))} dias");
        }
    }
}