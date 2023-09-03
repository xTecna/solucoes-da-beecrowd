using System;

class URI {
    static void Main(string[] args) {
        string um = "one";
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            string palavra = Console.ReadLine();

            if(palavra.Length == 5){
                Console.WriteLine(3);
            }else{
                int semelhancas = 0;
                for(int j = 0; j < 3; ++j){
                    if(palavra[j] == um[j]){
                        semelhancas += 1;
                    }
                }
                if(semelhancas > 1){
                    Console.WriteLine(1);
                }else{
                    Console.WriteLine(2);
                }
            }
        }
    }
}