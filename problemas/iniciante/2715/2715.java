import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine().trim());

            String[] entrada = in.readLine().trim().split(" ");
            long[] somas = new long[N];
            somas[0] = Long.parseLong(entrada[0]);
            for (int i = 1; i < N; ++i) {
                somas[i] = Long.parseLong(entrada[i]) + somas[i - 1];
            }

            int inicio = 0, fim = N;
            long resposta = somas[N - 1];
            while (inicio < fim) {
                int meio = (inicio + fim) / 2;

                long rangel = somas[meio];
                long gugu = somas[N - 1] - rangel;
                resposta = Math.min(resposta, Math.abs(rangel - gugu));

                if (rangel == gugu) {
                    break;
                } else if (rangel < gugu) {
                    inicio = meio + 1;
                } else {
                    fim = meio;
                }
            }

            System.out.println(resposta);
        }
    }
}