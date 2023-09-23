using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            string[] numeros = entrada.Trim().Split(' ');

            int a = int.Parse(numeros[0]);
            int b = int.Parse(numeros[1]);

            if(a == 0 && b == 0){
                break;
            }

            int carry = 0;
            int resposta = 0;
            while(a > 0 && b > 0){
                if(a % 10 + b % 10 + carry > 9){
                    carry = 1;
                    ++resposta;
                }else{
                    carry = 0;
                }

                a /= 10;
                b /= 10;
            }

            while(a > 0){
                if(a % 10 + carry > 9){
                    carry = 1;
                    ++resposta;
                }else{
                    carry = 0;
                }

                a /= 10;
            }

            while(b > 0){
                if(b % 10 + carry > 9){
                    carry = 1;
                    ++resposta;
                }else{
                    carry = 0;
                }

                b /= 10;
            }

            if(resposta == 0){
                Console.WriteLine("No carry operation.");
            }else if(resposta == 1){
                Console.WriteLine("1 carry operation.");
            }else{
                Console.WriteLine($"{resposta} carry operations.");
            }
        }
    }
}