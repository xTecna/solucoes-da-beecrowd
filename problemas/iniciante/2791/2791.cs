using System;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int[] numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToArray();

        for(int i = 0; i < 4; ++i){
            if(numeros[i] == 1){
                Console.WriteLine(i + 1);
                break;
            }
        }
    }
}