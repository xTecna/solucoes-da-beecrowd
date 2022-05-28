import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int[][] T;

    public static int sobrevivente(int n, int k) {
        if (T[n][k] == -1) {
            T[n][k] = (sobrevivente(n - 1, k) + k) % n;
        }
        return T[n][k];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        T = new int[101][1001];
        for (int i = 0; i < 2; ++i) {
            for (int j = 0; j < 1001; ++j) {
                T[i][j] = 0;
            }
        }
        for (int i = 2; i < 101; ++i) {
            for (int j = 0; j < 1001; ++j) {
                T[i][j] = -1;
            }
        }

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());

            if (N == 0) {
                break;
            }

            int m = 1;
            while ((sobrevivente(N - 1, m) + 1) % N != 12) {
                ++m;
            }

            System.out.println(m);
        }
    }
}