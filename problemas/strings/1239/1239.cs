using System;

class URI {
    static void Main(string[] args) {
        string frase;

        while((frase = Console.ReadLine()) != null){
            string resposta = "";

            bool negrito = false;
            bool italico = false;
            for(int i = 0; i < frase.Length; ++i){
                if(frase[i] == '_'){
                    if(italico){
                        resposta += "</i>";
                    }else{
                        resposta += "<i>";
                    }
                    italico = !italico;
                }else if(frase[i] == '*'){
                    if(negrito){
                        resposta += "</b>";
                    }else{
                        resposta += "<b>";
                    }
                    negrito = !negrito;
                }else{
                    resposta += frase[i];
                }
            }

            Console.WriteLine(resposta);
        }
    }
}