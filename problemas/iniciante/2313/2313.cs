using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI {
    static bool testaLado(int a, int b, int c){
        return Math.Abs(b - c) < a && a < b + c;
    }

    static bool triangulo(List<int> lados){
        return testaLado(lados[0], lados[1], lados[2]) && testaLado(lados[1], lados[0], lados[2]) && testaLado(lados[2], lados[0], lados[1]);
    }

    static string classificacao(List<int> lados){
        if(lados[0] == lados[1] && lados[1] == lados[2]){
            return "Equilatero";
        }
        if(lados[0] == lados[1] || lados[0] == lados[2] || lados[1] == lados[2]){
            return "Isoceles";
        }
        return "Escaleno";
    }

    static bool retangulo(List<int> lados){
        return lados[0] % 3 == 0 && lados[1] % 4 == 0 && lados[2] % 5 == 0;
    }

    static void Main(string[] args) {
        List<int> lados = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        lados.Sort();

        if(triangulo(lados)){
            Console.WriteLine($"Valido-{classificacao(lados)}");
            Console.WriteLine($"Retangulo: {(retangulo(lados) ? 'S' : 'N')}");
        }else{
            Console.WriteLine("Invalido");
        }
    }
}