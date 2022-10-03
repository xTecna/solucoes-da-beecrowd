using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            long X = long.Parse(Console.ReadLine());

            int resposta = 0, contador = 0;
            while(X > 0){
                if(X % 2 == 1){
                    ++contador;
                }else{
                    resposta = Math.Max(resposta, contador);
                    contador = 0;
                }
                X /= 2;
            }
            resposta = Math.Max(resposta, contador);

            Console.WriteLine(resposta);
        }
    }
}