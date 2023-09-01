using System;

class URI {
    static void Main(string[] args) {
        string expressao;

        while((expressao = Console.ReadLine()) != null){
            int i = 0;
            int parenteses = 0;

            for(i = 0; i < expressao.Length; ++i){
                if(expressao[i] == '('){
                    parenteses += 1;
                }else if(expressao[i] == ')'){
                    if(parenteses == 0){
                        break;
                    }
                    parenteses -= 1;
                }
            }

            if(i == expressao.Length && parenteses == 0){
                Console.WriteLine("correct");
            }else{
                Console.WriteLine("incorrect");
            }
        }
    }
}