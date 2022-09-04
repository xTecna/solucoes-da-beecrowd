import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int[][] mapa;

    public static boolean temSabre(int x, int y) {
        for (int i = -1; i < 2; ++i) {
            for (int j = -1; j < 2; ++j) {
                if (i == 0 && j == 0) {
                    continue;
                }

                if (mapa[x + i][y + j] != 7) {
                    return false;
                }
            }
        }

        return mapa[x][y] == 42;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int N = Integer.parseInt(entrada[0]);
        int M = Integer.parseInt(entrada[1]);

        mapa = new int[N][M];
        for (int i = 0; i < N; ++i) {
            entrada = in.readLine().trim().split(" ");
            for (int j = 0; j < M; ++j) {
                mapa[i][j] = Integer.parseInt(entrada[j]);
            }
        }

        int x = 0;
        int y = 0;
        for (int i = 1; i < N - 1; ++i) {
            for (int j = 1; j < M - 1; ++j) {
                if (temSabre(i, j)) {
                    x = i + 1;
                    y = j + 1;
                    break;
                }
            }
        }

        System.out.printf("%d %d\n", x, y);
    }
}