import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
	public static double duracaoNota(char nota) {
		switch(nota){
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
	
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
			String entrada = in.readLine();

			if(entrada.equals("*")){
				break;
			}
			
			String[] composicoes = entrada.trim().split("/");

			int resposta = 0;
			for(int i = 0; i < composicoes.length; ++i){
				double duracao = 0.0;
				for(int j = 0; j < composicoes[i].length(); ++j){
					duracao += duracaoNota(composicoes[i].charAt(j));
				}

				if(duracao == 1.0){
					resposta += 1;
				}
			}

			System.out.println(resposta);
		}
    }
}