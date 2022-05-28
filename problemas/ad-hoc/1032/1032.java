import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int LIMITE = 3502;
    public static int PRIMO_LIMITE = 32612;

    public static int[][] F;
    public static boolean[] C;
    public static int[] primos;

    public static void Crivo() {
        C = new boolean[PRIMO_LIMITE];
        C[0] = false;
        C[1] = false;
        C[2] = true;

        int n_primos = 0;
        primos = new int[LIMITE];
        primos[n_primos++] = 2;

        for (int i = 3; i < PRIMO_LIMITE; ++i) {
            C[i] = (i % 2 == 1);
        }

        for (int i = 3; i < PRIMO_LIMITE; i += 2) {
            if (C[i]) {
                primos[n_primos++] = i;

                for (int j = 3 * i; j < PRIMO_LIMITE; j += 2 * i) {
                    C[j] = false;
                }
            }
        }
    }

    public static int josephus(int n, int k) {
        if (F[n][k] == -1) {
            F[n][k] = (josephus(n - 1, k + 1) + primos[k] - 1) % n + 1;
        }
        return F[n][k];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        Crivo();

        F = new int[LIMITE][LIMITE];
        for (int i = 0; i < LIMITE; ++i) {
            for (int j = 0; j < LIMITE; ++j) {
                F[i][j] = -1;
            }
        }

        for (int i = 0; i < LIMITE; ++i) {
            F[1][i] = 1;
        }

        while (in.ready()) {
            int n = Integer.parseInt(in.readLine());

            if (n == 0) {
                break;
            }

            System.out.println(josephus(n, 0));
        }
    }
}