import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int paesDeQueijoVizinhos(int[][] matriz, int i, int j) {
        return matriz[i - 1][j] + matriz[i + 1][j] + matriz[i][j - 1] + matriz[i][j + 1];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            int N = Integer.parseInt(entrada[0]);
            int M = Integer.parseInt(entrada[1]);

            int[][] matriz = new int[N + 2][M + 2];
            for (int i = 1; i <= N; ++i) {
                entrada = in.readLine().trim().split(" ");
                for (int j = 1; j <= M; ++j) {
                    matriz[i][j] = Integer.parseInt(entrada[j - 1]);
                }
            }

            for (int i = 1; i <= N; ++i) {
                for (int j = 1; j <= M; ++j) {
                    if (matriz[i][j] == 0) {
                        System.out.print(paesDeQueijoVizinhos(matriz, i, j));
                    } else {
                        System.out.print(9);
                    }
                }
                System.out.println("");
            }
        }
    }
}