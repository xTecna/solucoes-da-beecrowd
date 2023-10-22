using System;
using System.Text;

class URI {    
    static void Main(string[] args) {
        string teclado = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./";

        int[] posicoes = new int[255];
        for(int i = 0; i < teclado.Length; ++i){
            posicoes[teclado[i]] = i;
        }

        string frase;
        while((frase = Console.ReadLine()) != null){
            StringBuilder sb = new StringBuilder();
            for(int i = 0; i < frase.Length; ++i){
                if(frase[i] == ' '){
                    sb.Append(' ');
                }else{
                    sb.Append(teclado[posicoes[frase[i]] - 1]);
                }
            }
            Console.WriteLine(sb.ToString());
        }
    }
}