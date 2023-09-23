using System;

class URI {
    static void Main(string[] args) {
        int T = int.Parse(Console.ReadLine());
        for(int k = 0; k < T; ++k){
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            
            string A = entrada[0];
            string B = entrada[1];
            
            int resposta = 0;
            for(int i = 0; i < A.Length; ++i){
                resposta += (B[i] - A[i] + 26) % 26;
            }
            Console.WriteLine(resposta);
        }
    }
}