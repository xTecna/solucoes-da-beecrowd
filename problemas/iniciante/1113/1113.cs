using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            string[] numeros = entrada.Trim().Split(' ');
            int X = int.Parse(numeros[0]);
            int Y = int.Parse(numeros[1]);

            if(X == Y){
                break;
            }

            if(X < Y){
                Console.WriteLine("Crescente");
            }else{
                Console.WriteLine("Decrescente");
            }
        }
    }
}