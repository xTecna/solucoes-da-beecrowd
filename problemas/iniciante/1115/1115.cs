using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            string[] numeros = entrada.Trim().Split(' ');
            int X = int.Parse(numeros[0]), Y = int.Parse(numeros[1]);

            if(X == 0 || Y == 0){
                break;
            }

            if(X > 0){
                if(Y > 0){
                    Console.WriteLine("primeiro");
                }else{
                    Console.WriteLine("quarto");
                }
            }else{
                if(Y > 0){
                    Console.WriteLine("segundo");
                }else{
                    Console.WriteLine("terceiro");
                }
            }
        }
    }
}