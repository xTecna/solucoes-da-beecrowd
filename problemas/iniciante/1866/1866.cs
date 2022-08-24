using System;

class URI {
    static void Main(string[] args) {
        int C = int.Parse(Console.ReadLine());
        for(int i = 0; i < C; ++i){
            int N = int.Parse(Console.ReadLine());
            Console.WriteLine(N % 2);
        }
    }
}