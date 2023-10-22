using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
		for(int k = 0; k < N; ++k){
			string linha = Console.ReadLine();

			int[] parcelas = new int[3];
			parcelas[0] = int.Parse(linha.Substring(2, 2));
			parcelas[1] = int.Parse(linha.Substring(5, 3));
			parcelas[2] = int.Parse(linha.Substring(11, 2));

			int resposta = 0;
			for(int i = 0; i < 3; ++i){
				resposta += parcelas[i];
			}

			Console.WriteLine(resposta);
		}
    }
}