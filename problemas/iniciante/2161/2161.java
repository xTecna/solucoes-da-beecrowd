import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());

        double resposta;
        if (N == 0) {
            resposta = 3.0;
        } else {
            resposta = 6.0;
            for (int i = 0; i < N - 1; ++i) {
                resposta = 6.0 + 1.0 / resposta;
            }
            resposta = 3.0 + 1.0 / resposta;
        }

        System.out.printf("%.10f\n", resposta);
    }
}