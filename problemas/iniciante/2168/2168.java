import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int[][] mapa;

    public static boolean segura(int x, int y) {
        return mapa[x][y] + mapa[x + 1][y] + mapa[x][y + 1] + mapa[x + 1][y + 1] >= 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        mapa = new int[N + 1][N + 1];
        for (int i = 0; i < N + 1; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            for (int j = 0; j < N + 1; ++j) {
                mapa[i][j] = Integer.parseInt(entrada[j]);
            }
        }

        for (int i = 0; i < N; ++i) {
            for (int j = 0; j < N; ++j) {
                System.out.printf("%c", segura(i, j) ? 'S' : 'U');
            }
            System.out.println("");
        }
    }
}