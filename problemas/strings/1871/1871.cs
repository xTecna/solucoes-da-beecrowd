using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> NM = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            if(NM[0] == 0 && NM[1] == 0){
                break;
            }

            string soma = (NM[0] + NM[1]).ToString();
            soma = soma.Replace("0", "");

            Console.WriteLine(soma);
        }
    }
}