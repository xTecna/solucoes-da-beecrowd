using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        string grito = "";
        for(int i = 0; i < N; ++i){
            grito += "a";
        }

        Console.WriteLine($"Ent{grito}o eh N{grito}t{grito}l!");
    }
}