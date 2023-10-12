using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            if(entrada == "-1"){
                break;
            }
            
            int numero = 0;
            if(entrada.StartsWith("0x")){
                numero = Convert.ToInt32(entrada, 16);
                Console.WriteLine(numero);
            }else{
                numero = int.Parse(entrada);
                Console.WriteLine($"0x{numero:X}");
            }
        }
    }
}