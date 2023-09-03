using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        
        for(int i = 0; i < N; ++i){
            int resposta = 0;
            int parenteses = 0;
            string expressao = Console.ReadLine();

            for(int j = 0; j < expressao.Length; ++j){
                if(expressao[j] == '<'){
                    parenteses += 1;
                }else if(expressao[j] == '>' && parenteses > 0){
                    parenteses -= 1;
                    resposta += 1;
                }
            }

            Console.WriteLine(resposta);
        }
    }
}