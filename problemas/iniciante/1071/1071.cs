using System;
using System.Runtime;

class URI {    
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
        
        int soma = 0;
        for(int i = X; i <= Y; i += 2){
            soma += i;
        }

        Console.WriteLine(soma);
    }
}