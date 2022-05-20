using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            for(int i = 0; i < N; ++i){
                for(int j = 0; j < N; ++j){
                    if(i == N - 1 - j){
                        Console.Write(2);
                    }else if(i == j){
                        Console.Write(1);
                    }else{
                        Console.Write(3);
                    }
                }
                Console.Write("\n");
            }
        }
    }
}