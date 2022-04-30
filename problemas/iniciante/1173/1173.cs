using System;

class URI {
    static void Main(string[] args) {
        int V = int.Parse(Console.ReadLine());

        int produto = V;
        for(int i = 0; i < 10; ++i){
            Console.WriteLine($"N[{i}] = {produto}");
            produto <<= 1;
        }
    }
}