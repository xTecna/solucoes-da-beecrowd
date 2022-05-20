import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        String[] entrada = in.readLine().trim().split(" ");

        int menor = Integer.parseInt(entrada[0]);
        int resposta = 1;
        for (int i = 1; i < N; ++i) {
            int algoz = Integer.parseInt(entrada[i]);

            if (algoz < menor) {
                menor = algoz;
                resposta = i + 1;
            }
        }

        System.out.println(resposta);
    }
}