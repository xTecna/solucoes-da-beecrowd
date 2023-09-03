using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        string entrada;
        while((entrada = Console.ReadLine()) != null){
            string[] partes = entrada.Trim().Split(' ');

            int X1 = int.Parse(partes[0]);
            int Y1 = int.Parse(partes[1]);
            int X2 = int.Parse(partes[2]);
            int Y2 = int.Parse(partes[3]);
            
            if(X1 == 0 && Y1 == 0 && X2 == 0 && Y2 == 0){
                break;
            }

            if(X1 == X2 && Y1 == Y2){
                Console.WriteLine(0);
            }else if(X1 == X2 || Y1 == Y2 || Math.Abs(X1 - X2) == Math.Abs(Y1 - Y2)){
                Console.WriteLine(1);
            }else{
                Console.WriteLine(2);
            }
        }
    }
}