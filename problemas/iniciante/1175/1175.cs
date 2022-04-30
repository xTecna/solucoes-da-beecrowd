using System;

class URI {
    static void Main(string[] args) {
        int[] N = new int[20];

        for(int i = 0; i < 20; ++i){
            N[i] = int.Parse(Console.ReadLine());
        }

        for(int i = 0; i < 10; ++i){
            int temp = N[i];
            N[i] = N[19 - i];
            N[19 - i] = temp;
        }

        for(int i = 0; i < 20; ++i){
            Console.WriteLine($"N[{i}] = {N[i]}");
        }
    }
}