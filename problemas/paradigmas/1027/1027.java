import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.lang.Math;

public class Main {
    public static class Ponto implements Comparable<Ponto> {
        public int x;
        public int y;

        public Ponto() {
            this.x = 0;
            this.y = 0;
        }

        public Ponto(int x, int y) {
            this.x = x;
            this.y = y;
        }

        @Override
        public int compareTo(Ponto outro) {
            return this.x - outro.x;
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());

            Ponto[] pontos = new Ponto[N];
            for (int i = 0; i < N; ++i) {
                String[] entrada = in.readLine().trim().split(" ");
                pontos[i] = new Ponto(Integer.parseInt(entrada[0]), Integer.parseInt(entrada[1]));
            }
            Arrays.sort(pontos);

            int[][] DP = new int[N][2];
            DP[0][0] = 1;
            DP[0][1] = 1;
            int resposta = 1;
            for (int i = 1; i < N; ++i) {
                DP[i][0] = 1;
                DP[i][1] = 1;

                for (int j = 0; j < i; ++j) {
                    if (pontos[i].x == pontos[j].x) {
                        break;
                    }

                    if (pontos[i].y - pontos[j].y == 2) {
                        // Descendo, acrescentando mais um no caso em que j está acima
                        DP[i][1] = Math.max(DP[i][1], DP[j][0] + 1);
                    } else if (pontos[i].y - pontos[j].y == -2) {
                        // Subindo, acrescentando mais um no caso em que j está abaixo
                        DP[i][0] = Math.max(DP[i][0], DP[j][1] + 1);
                    }
                }

                resposta = Math.max(resposta, Math.max(DP[i][0], DP[i][1]));
            }

            System.out.println(resposta);
        }
    }
}