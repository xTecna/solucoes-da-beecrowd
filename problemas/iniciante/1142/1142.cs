using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 1; i < 4 * N; i += 4){
            Console.WriteLine($"{i} {i + 1} {i + 2} PUM");
        }
    }
}