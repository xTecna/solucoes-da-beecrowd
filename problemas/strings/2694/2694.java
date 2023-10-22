import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
		for(int k = 0; k < N; ++k){
			String linha = in.readLine();

			int[] parcelas = new int[3];
			parcelas[0] = Integer.parseInt(linha.substring(2, 4));
			parcelas[1] = Integer.parseInt(linha.substring(5, 8));
			parcelas[2] = Integer.parseInt(linha.substring(11, 13));

			int resposta = 0;
			for(int i = 0; i < 3; ++i){
				resposta += parcelas[i];
			}

			System.out.println(resposta);
		}
    }
}