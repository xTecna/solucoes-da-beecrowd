using System;

class URI {
    static void Main(string[] args) {
        string entrada;
        while((entrada = Console.ReadLine()) != null){
            bool maiuscula = true;

            for(int i = 0; i < entrada.Length; ++i){
                if(!char.IsLetter(entrada[i])){
                    Console.Write(entrada[i]);
                    continue;
                }

                if(maiuscula){
                    Console.Write(entrada[i].ToString().ToUpper());
                }else{
                    Console.Write(entrada[i].ToString().ToLower());
                }
                maiuscula = !maiuscula;
            }
            Console.WriteLine("");
        }
    }
}