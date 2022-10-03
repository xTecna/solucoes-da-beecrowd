using System;

class URI {
    static void imprimeLinhaHorizontal(){
        for(int i = 0; i < 39; ++i){
            Console.Write("-");
        }
        Console.WriteLine("");
    }

    static void imprimeCabecalho(){
        imprimeLinhaHorizontal();
        Console.WriteLine("|  decimal  |  octal  |  Hexadecimal  |");
        imprimeLinhaHorizontal();
    }

    static void imprimeLinha(int numero){
        Console.Write("|");

        string formato = numero.ToString();
        int espacos = 7 - formato.Length;
        for(int i = 0; i < espacos; ++i){
            Console.Write(" ");
        }
        Console.Write($"{formato}    |");

        formato = Convert.ToString(numero, 8);
        espacos = 5 - formato.Length;
        for(int i = 0; i < espacos; ++i){
            Console.Write(" ");
        }
        Console.Write($"{formato}    |");

        formato = Convert.ToString(numero, 16).ToUpper();
        espacos = 8 - formato.Length;
        for(int i = 0; i < espacos; ++i){
            Console.Write(" ");
        }
        Console.WriteLine($"{formato}       |");
    }

    static void Main(string[] args) {
        imprimeCabecalho();
        for(int i = 0; i < 16; ++i){
            imprimeLinha(i);
        }
        imprimeLinhaHorizontal();
    }
}