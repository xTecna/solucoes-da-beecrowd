using System;

class URI {
    static void Main(string[] args) {
        int pares = 0;
        string bits = Console.ReadLine();

        for(int i = 0; i < bits.Length; ++i){
            pares += bits[i] == '1' ? 1 : 0;
        }

        Console.WriteLine($"{bits}{pares % 2}");
    }
}