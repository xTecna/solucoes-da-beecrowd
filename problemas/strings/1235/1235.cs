using System;

class URI {
    static string Reverse(string texto){
        char[] letras = texto.ToCharArray();
        Array.Reverse(letras);
        return new string(letras);
    }
    
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string frase = Console.ReadLine();

            string metade1 = frase.Substring(0, frase.Length/2);
            string metade2 = frase.Substring(frase.Length/2);

            string resposta = Reverse(metade1) + Reverse(metade2);
            Console.WriteLine(resposta);
        }
    }
}