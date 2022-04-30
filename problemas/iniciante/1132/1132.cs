using System;

class URI {
    static void Main(string[] args) {
        int X = int.Parse(Console.ReadLine());
        int Y = int.Parse(Console.ReadLine());

        if(X > Y){
            int temp = X;
            X = Y;
            Y = temp;
        }

        int soma = 0;
        for(int i = X; i <= Y; ++i){
            if(i % 13 == 0){
                continue;
            }
            soma += i;
        }

        Console.WriteLine(soma);
    }
}