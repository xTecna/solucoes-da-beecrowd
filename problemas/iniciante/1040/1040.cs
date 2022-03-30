using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int leDouble(string entrada) {
        List<int> numeros = entrada.Split('.').Select((x) => int.Parse(x)).ToList();
        return numeros[0] * 10 + numeros[1];
    }
    
    static string imprimeDouble(int numero){
        return $"{numero/10}.{numero%10}";
    }
    
    static void Main(string[] args) {
        List<int> notas = Console.ReadLine().Trim().Split(' ').Select((x) => leDouble(x)).ToList();
        
        int media = (2 * notas[0] + 3 * notas[1] + 4 * notas[2] + notas[3])/10;
        
        Console.WriteLine($"Media: {imprimeDouble(media)}");
        if(media >= 70){
            Console.WriteLine("Aluno aprovado.");
        }else if(media < 50){
            Console.WriteLine("Aluno reprovado.");
        }else{
            Console.WriteLine("Aluno em exame.");
            
            int exame = leDouble(Console.ReadLine().Trim());
            media = (media + exame)/2;
            
            Console.WriteLine($"Nota do exame: {imprimeDouble(exame)}");
            if(media >= 50){
                Console.WriteLine("Aluno aprovado.");
            }else{
                Console.WriteLine("Aluno reprovado.");
            }
            Console.WriteLine($"Media final: {imprimeDouble(media)}");
        }
    }
}