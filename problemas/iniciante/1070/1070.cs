using System;

class URI {
    static void Main(string[] args) {
        int X = int.Parse(Console.ReadLine());
        X += 1 - (X % 2);

        for(int i = 0; i < 12; i += 2){
            Console.WriteLine(X + i);
        }
    }
}