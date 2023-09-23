using System;

class URI {
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            if(entrada.Length < 6 || entrada.Length > 32){
                Console.WriteLine("Senha invalida.");
                continue;
            }
            
            bool maiuscula = false;
            bool minuscula = false;
            bool numero = false;
            bool errado = false;
            for(int i = 0; i < entrada.Length; ++i){
                if(char.IsLetter(entrada[i])){
                    if(char.IsUpper(entrada[i]))    maiuscula = true;
                    else                            minuscula = true;
                }else if(char.IsNumber(entrada[i])){
                    numero = true;
                }else{
                    errado = true;
                    break;
                }
            }
            
            if(errado || !(maiuscula && minuscula && numero)){
                Console.WriteLine("Senha invalida.");
            }else{
                Console.WriteLine("Senha valida.");
            }
        }
    }
}