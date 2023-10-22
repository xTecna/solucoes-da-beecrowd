using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int[] resposta;

    static bool repetido(int n){
        List<bool> digitos = new List<bool>();
        for(int i = 0; i < 10; ++i){
            digitos.Add(false);
        }
        
        while(n > 0){
            if(digitos[n % 10]){
                return true;
            }
            digitos[n % 10] = true;
            n /= 10;
        }

        return false;
    }

    static void preCalcula(){
        resposta = new int[5001];

        resposta[0] = 0;
        for(int i = 1; i < 5001; ++i){
            resposta[i] = resposta[i - 1];
            if(!repetido(i)){
                resposta[i] += 1;
            }
        }
    }

    static int digitosDiferentes(int a, int b){
        return resposta[b] - resposta[a - 1];
    }
    
    static void Main(string[] args) {
        string entrada;

        preCalcula();

        while((entrada = Console.ReadLine()) != null){
            List<int> NM = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            Console.WriteLine(digitosDiferentes(NM[0], NM[1]));
        }
    }
}