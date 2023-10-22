using System;

class URI
{
    static int valor(char simbolo){
        switch(simbolo){
            case '-':   return 0;
            case '*':   return 1;
            default:    return 0;
        }
    }

    static int converte(string numero)
    {
        int potencia = 1, resposta = 0;

        for(int i = numero.Length - 1; i > -1; --i){
            resposta += valor(numero[i]) * potencia;
            potencia *= 2;
        }

        return resposta;
    }

    static void Main(string[] args)
    {
        int soma = 0;
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            if (entrada == "caw caw")
            {
                Console.WriteLine(soma);
                soma = 0;
            }
            else
            {
                soma += converte(entrada);
            }
        }
    }
}