import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());
        for(int k = 0; k < T; ++k){
            String[] entrada = in.readLine().trim().split(" ");

            String A = entrada[0];
            String B = entrada[1];

            int resposta = 0;
            for(int i = 0; i < A.length(); ++i){
                resposta += (B.charAt(i) - A.charAt(i) + 26) % 26;
            }
            System.out.println(resposta);
        }
    }
}