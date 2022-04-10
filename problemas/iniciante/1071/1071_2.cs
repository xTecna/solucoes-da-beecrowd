using System;
using System.Runtime;

class URI {
    static int numeroImpares(int X, int Y){
        return (Y - X)/2 + 1;
    }
    
    static int somaPA(int X, int Y){
        return (X + Y) * numeroImpares(X, Y)/2;
    }
    
    static void Main(string[] args) {
        int X = int.Parse(Console.ReadLine());
        int Y = int.Parse(Console.ReadLine());
        
        if(X > Y){
            int temp = X;
            X = Y;
            Y = temp;
        }
        X += (Math.Abs(X) % 2) + 1;
        Y -= (Math.Abs(Y) % 2) + 1;
        
        Console.WriteLine(somaPA(X, Y));
    }
}