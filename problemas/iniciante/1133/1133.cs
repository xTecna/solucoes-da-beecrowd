using System;

class URI {
    static void Main(string[] args) {
        int X, Y;

        X = int.Parse(Console.ReadLine());
        Y = int.Parse(Console.ReadLine());

        if(X > Y){
            int temp = X;
            X = Y;
            Y = temp;
        }

        for(int i = X + 1; i < Y; ++i){
            if(i % 5 > 1 && i % 5 < 4){
                Console.WriteLine(i);
            }
        }
    }
}