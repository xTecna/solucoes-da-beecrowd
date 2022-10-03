using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int M = int.Parse(entrada);

            M %= 360;

            if(M < 90){
                Console.WriteLine("Bom Dia!!");
            }else if(M < 180){
                Console.WriteLine("Boa Tarde!!");
            }else if(M < 270){
                Console.WriteLine("Boa Noite!!");
            }else{
                Console.WriteLine("De Madrugada!!");
            }
        }
    }
}