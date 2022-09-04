using System;

class URI {
    static void Main(string[] args) {
        int C = int.Parse(Console.ReadLine());
        for(int i = 0; i < C; ++i){
            string galopeira = Console.ReadLine();
            Console.WriteLine($"{(0.08 + 0.01 * (galopeira.Length - 8)):N2}");
        }
    }
}