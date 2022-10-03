using System;

class URI {
    static void imprimeLinha(){
        Console.WriteLine("---------------------------------------");
    }

    static void imprimeMeio(){
        Console.Write("|");
        for(int i = 0; i < 37; ++i){
            Console.Write(" ");
        }
        Console.WriteLine("|");
    }

    static void Main(string[] args) {
        imprimeLinha();
        for(int i = 0; i < 5; ++i){
            imprimeMeio();
        }
        imprimeLinha();
    }
}