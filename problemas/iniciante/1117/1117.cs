using System;

class URI {
    static void Main(string[] args) {
        double nota, nota1, nota2;

        nota1 = -1.0;
        nota2 = -1.0;
        while(nota2 == -1.0){
            nota = double.Parse(Console.ReadLine());

            if(nota >= 0.0 && nota <= 10.0){
                if(nota1 == -1.0){
                    nota1 = nota;
                }else{
                    nota2 = nota;
                }
            }else{
                Console.WriteLine("nota invalida");
            }
        }

        Console.WriteLine($"media = {(nota1 + nota2) / 2}");
    }
}