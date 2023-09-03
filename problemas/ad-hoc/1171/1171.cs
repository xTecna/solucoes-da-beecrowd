using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        int[] frequencias = new int[2001];
        for(int i = 0; i < N; ++i){
            int X = int.Parse(Console.ReadLine());
            frequencias[X] += 1;
        }

        for(int i = 1; i < 2001; ++i){
            if(frequencias[i] > 0){
                Console.WriteLine($"{i} aparece {frequencias[i]} vez(es)");
            }
        }
    }
}