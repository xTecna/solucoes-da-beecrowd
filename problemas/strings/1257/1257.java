import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());

        for(int k = 0; k < N; ++k){
            int L = Integer.parseInt(in.readLine());

            int valor = 0;
            for(int i = 0; i < L; ++i){
                String frase = in.readLine();

                for(int j = 0; j < frase.length(); ++j){
                    valor += frase.charAt(j) - 'A' + i + j;
                }
            }

            System.out.println(valor);
        }
    }
}