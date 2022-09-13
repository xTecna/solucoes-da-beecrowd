using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            if(entrada == "-1"){
                break;
            }

            List<char> P = entrada.Trim().ToCharArray().ToList();

            if(entrada != "0"){
                int n = P.Count() - 1;
                while(P[n] == '0'){
                    P[n--] = '9';
                }
                --P[n];
            }

            if(P.Count() > 1 && P[0] == '0'){
                P.RemoveAt(0);
            }

            Console.WriteLine(string.Join("", P));
        }
    }
}