using System;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            if(entrada == "*"){
                break;
            }
            
            string[] palavras = entrada.Trim().ToLower().Split(' ');
            
            char letra = palavras[0][0];
            bool tautograma = palavras.All(x => x[0] == letra);
            
            if(tautograma){
                Console.WriteLine("Y");
            }else{
                Console.WriteLine("N");
            }
        }
    }
}