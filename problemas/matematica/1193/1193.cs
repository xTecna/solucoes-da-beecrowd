using System;

class URI {
    static int valor(char simbolo){
        if(Char.IsLetter(simbolo)){
            return simbolo - 'a' + 10;
        }else{
            return simbolo - '0';
        }
    }

    static char simbolo(int valor){
        if(valor > 9){
            return (char)(valor - 10 + 'a');
        }else{
            return (char)(valor + '0');
        }
    }
    
    static int converteParaDecimal(string numero, int baseNumerica){
        int potencia = 1, resposta = 0;

        for(int i = numero.Length - 1; i > -1; --i){
            resposta += valor(numero[i]) * potencia;
            potencia *= baseNumerica;
        }

        return resposta;
    }
    
    static string converteDeDecimal(int numero, int baseNumerica){
        string resposta = "";

        while(numero > 0){
            resposta = simbolo(numero % baseNumerica) + resposta;
            numero /= baseNumerica;
        }

        return resposta;
    }
    
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 1; i <= N; ++i){
            string[] partes = Console.ReadLine().Trim().Split(' ');

            Console.WriteLine($"Case {i}:");
            if(partes[1] == "bin"){
                int dec = converteParaDecimal(partes[0], 2);
                Console.WriteLine($"{dec} dec");
                Console.WriteLine($"{converteDeDecimal(dec, 16)} hex");
            }else if(partes[1] == "dec"){
                int dec = converteParaDecimal(partes[0], 10);
                Console.WriteLine($"{converteDeDecimal(dec, 16)} hex");
                Console.WriteLine($"{converteDeDecimal(dec, 2)} bin");
            }else if(partes[1] == "hex"){
                int dec = converteParaDecimal(partes[0], 16);
                Console.WriteLine($"{dec} dec");
                Console.WriteLine($"{converteDeDecimal(dec, 2)} bin");
            }
            Console.WriteLine("");
        }
    }
}