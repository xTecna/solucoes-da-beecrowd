import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            char[] frase = in.readLine().toCharArray();

            int n = frase.length;
            for(int j = 0; j < n/4; ++j){
                char aux = frase[j];
                frase[j] = frase[n/2 - j - 1];
                frase[n/2 - j - 1] = aux;

                aux = frase[j + n/2];
                frase[j + n/2] = frase[n - j - 1];
                frase[n - j - 1] = aux;
            }

            System.out.println(new String(frase));
        }
    }
}