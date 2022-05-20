using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            if(N == 0){
                Console.WriteLine("vai ter copa!");
            }else{
                Console.WriteLine("vai ter duas!");
            }
        }
    }
}