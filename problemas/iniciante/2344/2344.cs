using System;

class URI {
    static char conceito(int nota) {
        if(nota > 85){
            return 'A';
        }
        if(nota > 60){
            return 'B';
        }
        if(nota > 35){
            return 'C';
        }
        if(nota > 0){
            return 'D';
        }
        return 'E';
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        Console.WriteLine(conceito(N));
    }
}