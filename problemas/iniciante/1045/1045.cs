using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).OrderByDescending((x) => x).ToList();
        double A = entrada[0];
        double B = entrada[1];
        double C = entrada[2];
        
        if(A >= B + C){
            Console.WriteLine("NAO FORMA TRIANGULO");
        }else{
            if(A * A == B * B + C * C){
                Console.WriteLine("TRIANGULO RETANGULO");
            }else if(A * A > B * B + C * C){
                Console.WriteLine("TRIANGULO OBTUSANGULO");
            }else{
                Console.WriteLine("TRIANGULO ACUTANGULO");
            }
            
            if(A == B && B == C){
                Console.WriteLine("TRIANGULO EQUILATERO");
            }else if(A == B || A == C || B == C){
                Console.WriteLine("TRIANGULO ISOSCELES");
            }
        }
    }
}