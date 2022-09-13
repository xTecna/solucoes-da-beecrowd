using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static double notaFinal(List<double> notas, double dificuldade) {
        notas.Sort();

        double soma = 0.0;
        for(int i = 1; i < 6; ++i){
            soma += notas[i];
        }

        return soma * dificuldade;
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string nome = Console.ReadLine();
            double dificuldade = double.Parse(Console.ReadLine());
            List<double> notas = Console.ReadLine().Trim().Split(' ').Select(x => double.Parse(x)).ToList();

            Console.WriteLine($"{nome} {notaFinal(notas, dificuldade):0.00}");
        }
    }
}