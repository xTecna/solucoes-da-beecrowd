using System;

class URI {
    static void Main(string[] args) {
        string linha = string.Empty;

        while ((linha = Console.ReadLine()) != null){
            int senha = int.Parse(linha);

            if(senha == 2002){
                Console.WriteLine("Acesso Permitido");
                break;
            }

            Console.WriteLine("Senha Invalida");
        }
    }
}