import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        String[] entrada = in.readLine().trim().split(" ");
        int[] ovelhas = new int[N];

        long naoRoubados = 0;
        for (int k = 0; k < N; ++k) {
            ovelhas[k] = Integer.parseInt(entrada[k]);
            naoRoubados += ovelhas[k];
        }

        int i = 0, estrelas = 0;
        boolean[] visitados = new boolean[N];
        while (-1 < i && i < N) {
            if (!visitados[i]) {
                visitados[i] = true;
                ++estrelas;
            }

            long antes = ovelhas[i];
            if (ovelhas[i] > 0) {
                --ovelhas[i];
                --naoRoubados;
            }

            if (antes % 2 == 1) {
                ++i;
            } else {
                --i;
            }
        }

        System.out.printf("%d %d\n", estrelas, naoRoubados);
    }
}