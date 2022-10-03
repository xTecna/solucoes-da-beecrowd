using System;

class URI {
    static void imprimeLinha(){
        for(int i = 0; i < 39; ++i){
            Console.Write("-");
        }
        Console.WriteLine("");
    }

    static void imprimeMeio(string texto, int indice){
        Console.Write("|");
        for(int i = 0; i < indice - 2; ++i){
            Console.Write(" ");
        }
        Console.Write(texto);

        int resto = 37 - Math.Max(0, indice - 2) - texto.Length;
        for(int i = 0; i < resto; ++i){
            Console.Write(" ");
        }
        Console.WriteLine("|");
    }

    static void Main(string[] args) {
        imprimeLinha();
        imprimeMeio("Roberto", 10);
        imprimeMeio("", 1);
        imprimeMeio("5786", 10);
        imprimeMeio("", 1);
        imprimeMeio("UNIFEI", 10);
        imprimeLinha();
    }
}