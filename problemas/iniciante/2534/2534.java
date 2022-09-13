import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            int N = Integer.parseInt(entrada[0]);
            int Q = Integer.parseInt(entrada[1]);

            int[] P = new int[N];
            for (int i = 0; i < N; ++i) {
                P[i] = Integer.parseInt(in.readLine());
            }

            Arrays.sort(P);

            for (int i = 0; i < Q; ++i) {
                int posicao = Integer.parseInt(in.readLine());
                System.out.println(P[N - posicao]);
            }
        }
    }
}