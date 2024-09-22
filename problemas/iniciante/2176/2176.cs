using System;

class URI {
    static void Main(string[] args) {
        int pares = 0;
        string entrada = Console.ReadLine();

        for(int i = 0; i < entrada.Length; ++i){
            pares += entrada[i] == '1' ? 1 : 0;
        }

        Console.WriteLine($"{entrada}{pares % 2}");
    }
}