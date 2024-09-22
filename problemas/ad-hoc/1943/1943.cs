using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        
        if(N == 1)          Console.WriteLine("Top 1");
        else if(N <= 3)     Console.WriteLine("Top 3");
        else if(N <= 5)     Console.WriteLine("Top 5");
        else if(N <= 10)    Console.WriteLine("Top 10");
        else if(N <= 25)    Console.WriteLine("Top 25");
        else if(N <= 50)    Console.WriteLine("Top 50");
        else                Console.WriteLine("Top 100");
    }
}