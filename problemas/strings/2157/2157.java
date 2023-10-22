import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int C = Integer.parseInt(in.readLine());
        for(int k = 0; k < C; ++k){
            String[] BE = in.readLine().trim().split(" ");
            int B = Integer.parseInt(BE[0]);
            int E = Integer.parseInt(BE[1]);

            String resposta = "";
            for(int i = B; i <= E; ++i){
                resposta += Integer.toString(i);
            }
            int tamanho = resposta.length();
            for(int i = tamanho - 1; i > -1; --i){
                resposta += resposta.charAt(i);
            }

            System.out.println(resposta);
        }
    }
}