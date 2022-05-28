import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    public static int pesquisaBinaria(int[] V, int valor) {
        int inicio = 0, fim = V.length;

        while (inicio < fim) {
            int meio = (inicio + fim) / 2;

            if (V[meio] < valor) {
                inicio = meio + 1;
            } else {
                fim = meio;
            }
        }

        if (inicio >= V.length) {
            return -1;
        }

        return V[inicio] == valor ? inicio + 1 : -1;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = 0;
        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");

            int N = Integer.parseInt(entrada[0]);
            int Q = Integer.parseInt(entrada[1]);

            if (N == 0 && Q == 0) {
                break;
            }

            int[] marmores = new int[N];
            for (int i = 0; i < N; ++i) {
                marmores[i] = Integer.parseInt(in.readLine());
            }
            Arrays.sort(marmores);

            System.out.printf("CASE# %d:\n", ++T);
            for (int i = 0; i < Q; ++i) {
                int consulta = Integer.parseInt(in.readLine());

                int resposta = pesquisaBinaria(marmores, consulta);
                if (resposta == -1) {
                    System.out.printf("%d not found\n", consulta);
                } else {
                    System.out.printf("%d found at %d\n", consulta, resposta);
                }
            }
        }
    }
}