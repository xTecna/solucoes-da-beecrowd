using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string[] AB = Console.ReadLine().Trim().Split(' ');
            int A = int.Parse(AB[0]);
            int B = int.Parse(AB[1]);

            bool encaixa = true;
            while(A > 0 && B > 0){
                if(A % 10 != B % 10){
                    encaixa = false;
                    break;
                }

                A /= 10;
                B /= 10;
            }

            if(B > 0)   encaixa = false;

            if(encaixa){
                Console.WriteLine("encaixa");
            }else{
                Console.WriteLine("nao encaixa");
            }
        }
    }
}