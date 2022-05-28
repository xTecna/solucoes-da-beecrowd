import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int[] F;
    public static int[] CF;

    public static void calcula(int n) {
        if (F[n] == -1) {
            calcula(n - 1);
            calcula(n - 2);

            F[n] = F[n - 1] + F[n - 2];
            CF[n] = CF[n - 1] + CF[n - 2] + 1;
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        F = new int[40];
        F[0] = 0;
        F[1] = 1;
        CF = new int[40];
        CF[0] = 1;
        CF[1] = 1;

        for (int i = 2; i < 40; ++i) {
            F[i] = -1;
            CF[i] = -1;
        }

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            int X = Integer.parseInt(in.readLine());
            calcula(X);
            System.out.printf("fib(%d) = %d calls = %d\n", X, CF[X] - 1, F[X]);
        }
    }
}