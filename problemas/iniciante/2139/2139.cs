using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int[] diasAteMes = new int[] {0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335};

    static int diasAteData(int mes, int dia){
        return diasAteMes[mes - 1] + dia;
    }

    static void Main(string[] args) {
        int mes, dia;
        string entrada;
        
        while ((entrada = Console.ReadLine()) != null)
        {
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            
            int diasAteNatal = diasAteData(12, 25) - diasAteData(numeros[0], numeros[1]);

            if (diasAteNatal < 0)
            {
                Console.WriteLine("Ja passou!");
            }
            else if (diasAteNatal == 0)
            {
                Console.WriteLine("E natal!");
            }
            else if (diasAteNatal == 1)
            {
                Console.WriteLine("E vespera de natal!");
            }
            else
            {
                Console.WriteLine($"Faltam {diasAteNatal} dias para o natal!");
            }
        }
    }
}