using System;

class URI {
	static double duracaoNota(char nota) {
		switch(nota) {
			case 'W':	return 1.0;
			case 'H':	return 0.5;
			case 'Q':	return 0.25;
			case 'E':	return 0.125;
			case 'S':	return 0.0625;
			case 'T':	return 0.03125;
			case 'X':	return 0.015625;
			default:	return 0.0;
		}
	}
	
    static void Main(string[] args) {
        string entrada;

		while((entrada = Console.ReadLine()) != null){
			if(entrada == "*"){
				break;
			}

			int resposta = 0;
			string[] composicoes = entrada.Trim().Split('/');
			for (int i = 0; i < composicoes.Length; ++i){
				double duracao = 0.0;
				for(int j = 0; j < composicoes[i].Length; ++j){
					duracao += duracaoNota(composicoes[i][j]);
				}

				if(duracao == 1.0){
					resposta += 1;
				}
			}

			Console.WriteLine(resposta);
		}
    }
}