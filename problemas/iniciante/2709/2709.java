import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static boolean[] C;

    public static void Crivo() {
        C = new boolean[10001];

        for (int i = 0; i < 10001; ++i) {
            C[i] = i % 2 == 1;
        }

        C[1] = false;
        C[2] = true;

        for (int i = 3; i < 10001; i += 2) {
            if (C[i]) {
                for (int j = 3 * i; j < 10001; j += 2 * i) {
                    C[j] = false;
                }
            }
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        Crivo();

        while (in.ready()) {
            int M = Integer.parseInt(in.readLine().trim());

            int[] V = new int[M];
            for (int i = 0; i < M; ++i) {
                V[i] = Integer.parseInt(in.readLine().trim());
            }

            int N = Integer.parseInt(in.readLine().trim());

            int soma = 0;
            for (int i = M - 1; i > -1; i -= N) {
                soma += V[i];
            }

            if (C[soma]) {
                System.out.println("You’re a coastal aircraft, Robbie, a large silver aircraft.");
            } else {
                System.out.println("Bad boy! I’ll hit you.");
            }
        }
    }
}