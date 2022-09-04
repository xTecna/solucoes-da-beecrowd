using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int[] trocos = new int[] {4, 7, 10, 12, 15, 20, 22, 25, 30, 40, 52, 55, 60, 70, 100, 102, 105, 110, 120, 150, 200};

        string entrada;
        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            if(numeros[0] == 0 && numeros[1] == 0){
                break;
            }

            bool possivel = false;
            int troco = numeros[1] - numeros[0];
            foreach (int possivelTroco in trocos){
                if (troco == possivelTroco){
                    possivel = true;
                    break;
                }
            }

            Console.WriteLine($"{(possivel ? "" : "im")}possible");
        }
    }
}