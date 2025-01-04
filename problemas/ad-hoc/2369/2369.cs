using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        int conta = 7;
        if (N > 100) {
            conta += (N - 100) * 5;
            N = 100;
        }
        if (N > 30) {
            conta += (N - 30) * 2;
            N = 30;
        }
        if (N > 10) {
            conta += (N - 10);
        }
        
        Console.WriteLine(conta);
    }
}