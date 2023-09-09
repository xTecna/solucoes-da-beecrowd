import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String[] frase = in.readLine().trim().split(" ");

            String resposta = "";
            for(int j = 0; j < frase.length; ++j){
                if(frase[j].length() > 0){
                    resposta += frase[j].charAt(0);
                }
            }
            System.out.println(resposta);
        }
    }
}