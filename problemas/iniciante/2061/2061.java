import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int N = Integer.parseInt(entrada[0]);
        int M = Integer.parseInt(entrada[1]);
        for (int i = 0; i < M; ++i) {
            String acao = in.readLine();

            if (acao.equals("fechou")) {
                ++N;
            } else {
                --N;
            }
        }

        System.out.println(N);
    }
}