using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            Console.WriteLine((int)(Math.Log(int.Parse(entrada))/Math.Log(2)));
        }
    }
}