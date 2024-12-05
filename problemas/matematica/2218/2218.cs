using System;

class URI {
    static int somaPA(int a1, int an, int n) {
        return (n * (a1 + an)) / 2;
    }

    static void Main(string[] args) {
        int t = int.Parse(Console.ReadLine());

        for(int i = 0; i < t; ++i){
            int n = int.Parse(Console.ReadLine());
            Console.WriteLine(somaPA(1, n, n) + 1);
        }        
    }
}