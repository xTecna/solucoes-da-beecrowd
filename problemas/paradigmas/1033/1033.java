import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int b;

    public static class Matriz {
        public int n;
        public int m;
        public int[][] M;

        public Matriz(int n, int m) {
            this.n = n;
            this.m = m;
            this.M = new int[this.n][this.m];
        }
    }

    public static Matriz multiplicacao(Matriz m1, Matriz m2) {
        Matriz m3 = new Matriz(m1.m, m2.n);

        for (int i = 0; i < m1.n; ++i) {
            for (int j = 0; j < m2.m; ++j) {
                for (int k = 0; k < m1.m; ++k) {
                    m3.M[i][j] += m1.M[i][k] * m2.M[k][j];
                    m3.M[i][j] %= b;
                }
            }
        }

        return m3;
    }

    public static Matriz potencia(Matriz base, int expoente) {
        if (expoente == 1) {
            return base;
        } else if (expoente % 2 == 1) {
            return multiplicacao(base, potencia(base, expoente - 1));
        } else {
            Matriz pot = potencia(base, expoente / 2);
            return multiplicacao(pot, pot);
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = 0;
        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            int n = Integer.parseInt(entrada[0]);
            b = Integer.parseInt(entrada[1]);

            if (n == 0 && b == 0) {
                break;
            }

            Matriz A = new Matriz(3, 3);
            A.M[0][0] = 1;
            A.M[0][1] = 1;
            A.M[0][2] = 1;
            A.M[1][0] = 1;
            A.M[1][1] = 0;
            A.M[1][2] = 0;
            A.M[2][0] = 0;
            A.M[2][1] = 0;
            A.M[2][2] = 1;

            Matriz B = new Matriz(3, 1);
            B.M[0][0] = 1;
            B.M[1][0] = 1;
            B.M[2][0] = 1;

            if (n < 2) {
                System.out.printf("Case %d: %d %d 1\n", ++T, n, b);
            } else {
                Matriz An1 = potencia(A, n - 1);
                Matriz R = multiplicacao(An1, B);

                System.out.printf("Case %d: %d %d %d\n", ++T, n, b, R.M[0][0]);
            }
        }
    }
}