using System;

class URI {
    static void Main(string[] args) {
        int N, X;

        N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            X = int.Parse(Console.ReadLine());

            if(X == 0){
                Console.WriteLine("NULL");
            }else if(X > 0){
                if(X % 2 == 1){
                    Console.Write("ODD");
                }else{
                    Console.Write("EVEN");
                }
                Console.WriteLine(" POSITIVE");
            }else{
                if(-X % 2 == 1){
                    Console.Write("ODD");
                }else{
                    Console.Write("EVEN");
                }
                Console.WriteLine(" NEGATIVE");
            }
        }
    }
}